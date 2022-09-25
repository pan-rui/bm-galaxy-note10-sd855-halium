{ pkgs? import <nixpkgs> {}, ... }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs;
    [ python2 openssl.dev bash ];

  LD_LIBRARY_PATH="${pkgs.ncurses5}/lib";
}

