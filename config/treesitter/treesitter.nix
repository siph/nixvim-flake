{pkgs, ...}: {
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;

      languageRegister.nu = "nu";
      languageRegister.surrealql = "surrealql";

      grammarPackages = with pkgs;
        vimPlugins.nvim-treesitter.passthru.allGrammars
        ++ (with tree-sitter-grammars; [tree-sitter-nu tree-sitter-surrealql]);

      settings = {
        highlight.enable = true;
        illuminate.enable = true;
      };
    };
  };

  extraFiles = with pkgs.tree-sitter-grammars; {
    "/queries/nu/highlights.scm".source = "${tree-sitter-nu}/queries/nu/highlights.scm";
    "/queries/nu/indents.scm".source = "${tree-sitter-nu}/queries/nu/indents.scm";
    "/queries/nu/injections.scm".source = "${tree-sitter-nu}/queries/nu/injections.scm";

    "/queries/surrealql/highlights.scm".source = "${tree-sitter-surrealql}/queries/highlights.scm";
  };

  filetype = {
    extension = {
      nu = "nu";
      surql = "surql";
      surrealql = "surql";
    };
  };

  extraConfigLua = ''
    vim.treesitter.language.register("nu", "nu")
    vim.treesitter.language.register("surrealql", "surql")
  '';
}
