{ pkgs ? (import <nixpkgs> {})
, haskellPackages ? pkgs.haskellPackages_ghc782
}:

haskellPackages.cabal.mkDerivation (self: {
  pname = "test";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
})
