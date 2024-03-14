{
  lib,
  neovim-nightly-overlay,
  nix-colors,
  nixvim,
  tree-sitter-nu,
  tree-sitter-surrealdb,
  ...
}: let
  additions = final: _prev:
    import ../pkgs {
      inherit nixvim nix-colors;
      inherit (final) system;
    };

  modifications = final: prev: {
    inherit (neovim-nightly-overlay.packages.${prev.system}) neovim;

    tree-sitter-grammars = {
      tree-sitter-nu = final.callPackage ../pkgs/tree-sitter-grammars/nushell.nix {
        inherit (final.tree-sitter) buildGrammar;
        inherit tree-sitter-nu;
      };

      tree-sitter-surrealdb = final.callPackage ../pkgs/tree-sitter-grammars/surrealdb.nix {
        inherit (final.tree-sitter) buildGrammar;
        inherit tree-sitter-surrealdb;
      };
    };
  };
in
  lib.composeManyExtensions [additions modifications]
