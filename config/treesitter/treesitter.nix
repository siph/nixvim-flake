{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;

      languageRegister.nu = "nu";
      languageRegister.surrealdb = "surrealdb";

      grammarPackages = with pkgs;
        vimPlugins.nvim-treesitter.passthru.allGrammars
        ++ (with tree-sitter-grammars; [tree-sitter-nu tree-sitter-surrealdb]);

      settings = {
        indent.enable = true;
        highlight.enable = true;
        illuminate.enable = true;
      };
    };
  };

  extraFiles = with pkgs.tree-sitter-grammars; {
    "/queries/nu/highlights.scm".source = "${tree-sitter-nu}/queries/nu/highlights.scm";
    "/queries/nu/indents.scm".source = "${tree-sitter-nu}/queries/nu/indents.scm";
    "/queries/nu/injections.scm".source = "${tree-sitter-nu}/queries/nu/injections.scm";

    "/queries/surrealdb/highlights.scm".source = "${tree-sitter-surrealdb}/queries/highlights.scm";
  };

  filetype = {
    extension = {
      nu = "nu";
      surql = "surql";
      surrealql = "surql";
    };
  };

  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.nu = {
      filetype = "nu",
    }

    parser_config.surrealdb = {
      filetype = "surql",
    }
  '';
}
