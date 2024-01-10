{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      indent = false;
      nixvimInjections = true;

      languageRegister.nu = "nu";
      grammarPackages = with pkgs;
        vimPlugins.nvim-treesitter.passthru.allGrammars
        ++ [tree-sitter-grammars.tree-sitter-nu];
    };
    treesitter-context.enable = true;
  };

  extraFiles = with pkgs.tree-sitter-grammars; {
    "/queries/nu/highlights.scm" = builtins.readFile "${tree-sitter-nu}/queries/nu/highlights.scm";
    "/queries/nu/injections.scm" = builtins.readFile "${tree-sitter-nu}/queries/nu/injections.scm";
  };

  filetype.extension.nu = "nu";

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.nu = {
      filetype = "nu",
    }
  '';
}
