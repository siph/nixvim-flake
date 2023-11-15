{
  lib,
  nixvim,
  tree-sitter-nu,
  ...
}: let
  additions = final: _prev:
    import ../pkgs {
      inherit nixvim;
      inherit (final) system;
    };

  modifications = final: prev: {
    tree-sitter-grammars.tree-sitter-nu = final.callPackage ../pkgs/tree-sitter-grammars/nushell.nix {
      inherit (final.tree-sitter) buildGrammar;
      inherit tree-sitter-nu;
    };
  };
in
  lib.composeManyExtensions [additions modifications]
