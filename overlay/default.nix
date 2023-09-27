{inputs, ...}: let
  additions = final: _prev:
    import ../pkgs {
      inherit inputs;
      pkgs = final;
    };

  modifications = final: prev: {
    tree-sitter-grammars.tree-sitter-nu = final.callPackage ../pkgs/tree-sitter-grammars/nushell.nix {
      inherit (final.tree-sitter) buildGrammar;
      inherit inputs;
    };
  };
in
  inputs.nixpkgs.lib.composeManyExtensions [additions modifications]
