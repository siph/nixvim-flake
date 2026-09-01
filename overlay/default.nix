{
  lib,
  nix-colors,
  nixvim,
  tree-sitter-nu,
  tree-sitter-surrealql,
  ...
}: let
  additions = final: _prev:
    import ../pkgs {
      inherit nixvim nix-colors;
      inherit (final) system;
    };

  modifications = final: prev: {
    tree-sitter-grammars = {
      tree-sitter-nu = final.callPackage ../pkgs/tree-sitter-grammars/nushell.nix {
        inherit (final.tree-sitter) buildGrammar;
        inherit tree-sitter-nu;
      };

      tree-sitter-surrealql = final.callPackage ../pkgs/tree-sitter-grammars/surrealql.nix {
        inherit (final.tree-sitter) buildGrammar;
        inherit tree-sitter-surrealql;
      };
    };
  };
in
  lib.composeManyExtensions [additions modifications]
