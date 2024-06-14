{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.gen = {
    url = "github:kubernetes-client/gen";
    flake = false;
  };
  inputs.gitignore = {
    url = "github:hercules-ci/gitignore.nix";
    inputs.nixpkgs.follows = "nixpkgs";
  };
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=release-24.05";

  outputs = { self, flake-utils, gen, gitignore, nixpkgs }:
    flake-utils.lib.eachSystem ["x86_64-linux"] (system:
      let
        pkgs = import nixpkgs { inherit system; };

        generateVersion = k8sVersion: pkgVersion: pkgs.writeShellScriptBin "generate-kubernetes-client-core-${k8sVersion}" ''
          export KUBERNETES_VERSION="${k8sVersion}"
          out="kubernetes-${k8sVersion}"
          ${pkgs.bash}/bin/bash "${gen}/openapi/haskell.sh" "$out" settings

          echo "OUT: $out"

          ${pkgs.gnused}/bin/sed -i 's/^version:\s*\(.*\)/version:        ${pkgVersion}/' "$out/kubernetes-client-core.cabal"
        '';

      in {
        packages = {
          hello = pkgs.hello;
          default = pkgs.hello;

          generate_1_20 = generateVersion "1.20" "1.20.0";
        };
      });
}
