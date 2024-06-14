{
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=release-24.05";
  inputs.gen = {
    url = "github:kubernetes-client/gen";
    flake = false;
  };

  outputs = { self, flake-utils, nixpkgs, gen }:
    flake-utils.lib.eachSystem ["x86_64-linux"] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        packages = {
          hello = pkgs.hello;
          default = pkgs.hello;
        };
      });
}
