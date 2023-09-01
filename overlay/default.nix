{
  inputs,
  system,
  ...
}: let
  additions = final: _prev: import ../pkgs {pkgs = final;};

  modifications = final: prev: {
    tree-sitter-grammars.tree-sitter-nu = inputs.nixpkgs.${system}.callPackage ../pkgs/tree-sitter-grammars/nushell.nix;
  };
in
  inputs.nixpkgs.lib.composeManyExtensions [additions modifications]
