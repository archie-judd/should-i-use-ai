let pkgs = import <nixpkgs> { };
in pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (ps: with ps; [ pyyaml ]))
    pkgs.nodePackages.prettier
  ];
}
