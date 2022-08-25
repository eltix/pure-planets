let
  nixpkgsRev = "03428dbaaa23d6bf458770907b0927b377c873a8"; /* nixpkgs-unstable from 2022-08-25 */
  nixpkgsSha256 = "0rcqpb4laiq6ai24i9fa41h2hhg2s2bb4iihjnzdj9bmqysgs9z5";

  nixpkgs = fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/${nixpkgsRev}.tar.gz";
    sha256 = nixpkgsSha256;
  };

in
  with import nixpkgs {};
  mkShell {
    buildInputs = [ haskell.compiler.ghc924 cabal-install ];
  }
