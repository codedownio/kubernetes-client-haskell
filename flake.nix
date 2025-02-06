{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.gen = {
    url = "github:kubernetes-client/gen";
    flake = false;
  };
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=release-24.05";

  outputs = { self, flake-utils, gen, nixpkgs }:
    flake-utils.lib.eachSystem ["x86_64-linux"] (system:
      let
        pkgs = import nixpkgs { inherit system; };

        # Patch gen to update the cabal file name
        patched-gen = pkgs.applyPatches {
          name = "kubernetes-gen";
          src = gen;
          patches = [
            ./patches/gen-change-cabal-name.patch
            ./patches/gen-cabal-metadata.patch
          ];
        };

        clientMinorVersion = "0";

      in {
        packages = {
          generate = pkgs.writeShellScriptBin "generate-kubernetes-api.sh" ''
            export KUBERNETES_VERSION="$1"
            PACKAGE_VERSION="$2"
            out="kubernetes-api-$KUBERNETES_VERSION"

            export CLIENT_MINOR_VERSION=${clientMinorVersion}

            # Generate
            ${pkgs.bash}/bin/bash "${patched-gen}/openapi/haskell.sh" "$out" settings

            # Copy handwritten files
            cp ${./handwritten/CustomTypes.hs} "$out/lib/Kubernetes/OpenAPI/CustomTypes.hs"

            # Fill in the package version
            ${pkgs.gnused}/bin/sed -i "s/^version:\s*\(.*\)/version:        $PACKAGE_VERSION/" "$out/kubernetes-api.cabal"

            # Fix a bound
            ${pkgs.gnused}/bin/sed -i 's/\(http-api-data >= 0.3.4 &&\) <0.6/\1 <0.7/' "$out/kubernetes-api.cabal"

            # Delete openapi.yaml from the extra-source-files
            ${pkgs.gnused}/bin/sed -i '/^\s*openapi\.yaml$/d' "$out/kubernetes-api.cabal"

            # Update the resolver in stack.yaml and add a Nix stanza
            ${pkgs.gnused}/bin/sed -i 's/^resolver:\s*.*$/resolver: lts-23.7/' "$out/stack.yaml"
            cat << EOM >> $out/stack.yaml
            nix:
              pure: false
              packages:
              - zlib
            EOM

            # Remove unnecessary files
            git clean -fdx "$out"
          '';

          set-stack-version = pkgs.writeShellScriptBin "build-kubernetes-api-client.sh" ''
            export KUBERNETES_VERSION="$1.${clientMinorVersion}"
            STACK_YAML="$2"

            ${pkgs.gnused}/bin/sed -i "s/^- kubernetes-api-\(1\.\)[0-9]\+/- kubernetes-api-$KUBERNETES_VERSION/" "$STACK_YAML"
          '';

          set-cabal-version = pkgs.writeShellScriptBin "build-kubernetes-client.sh" ''
            export KUBERNETES_VERSION="$1.${clientMinorVersion}"
            CABAL_PROJECT="$2"

            ${pkgs.gnused}/bin/sed -i "s/^  kubernetes-api-\(1\.\)[0-9]\+/  kubernetes-api-$KUBERNETES_VERSION/" "$CABAL_PROJECT"
          '';
        };
      });
}
