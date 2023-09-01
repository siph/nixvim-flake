{pkgs, ...}: let
  tree-sitter-nu = pkgs.callPackage ./grammars/nushell.nix {inherit (pkgs.tree-sitter) buildGrammar;};
in {
  plugins = {
    treesitter = {
      enable = true;
      indent = false;
      nixvimInjections = true;

      grammarPackages =
        pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars
        ++ [tree-sitter-nu];
      languageRegister.nu = "nu";
    };
    treesitter-context.enable = true;
  };

  extraFiles = {
    "/queries/nu/highlights.scm" = builtins.readFile "${tree-sitter-nu}/queries/highlights.scm";
    "/queries/nu/injections.scm" = builtins.readFile "${tree-sitter-nu}/queries/injections.scm";
  };

  filetype.extension.nu = "nu";

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.nu = {
      filetype = "nu",
    }
  '';
}
