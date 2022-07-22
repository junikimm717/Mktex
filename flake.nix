{
  description = "A very basic flake";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in rec {
        defaultPackage = pkgs.stdenv.mkDerivation {
          name = "mktex";
          src = ./.;
          installPhase = ''
            mkdir -p $out/bin
            cp $src/mktex $out/bin/mktex
            cp -r $src/manual $out/bin/manual
          '';
          doCheck = false;
        };
        formatter = nixpkgs.legacyPackages."${system}".nixfmt;
      });
}
