{
  description = "edccchk";
  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in {
        packages = {
          edccchk = pkgs.stdenv.mkDerivation {
            name = "edccchk";
            src = ./.;
            installPhase = "install -m 755 -Dt $out/bin edccchk";
          };
          default = self.packages.${system}.edccchk;
        };
        apps = {
          edccchk =
            flake-utils.lib.mkApp { drv = self.packages.${system}.edccchk; };
        };
      });
}
