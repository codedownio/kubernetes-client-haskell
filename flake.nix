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

      in {
        packages = rec {
          default = generate;

          generate = pkgs.writeShellScriptBin "generate-kubernetes-client-core.sh" ''
            export KUBERNETES_VERSION="$1"
            PACKAGE_VERSION="$2"
            out="kubernetes-$KUBERNETES_VERSION"
            ${pkgs.bash}/bin/bash "${gen}/openapi/haskell.sh" "$out" settings
            ${pkgs.gnused}/bin/sed -i "s/^version:\s*\(.*\)/version:        $PACKAGE_VERSION/" "$out/kubernetes-client-core.cabal"
          '';
        };
      });
}
