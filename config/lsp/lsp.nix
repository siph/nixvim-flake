{
  plugins = {
    lsp = {
      enable = true;

      servers = {
        kotlin-language-server.enable = true;
        lua-ls.enable = true;
        marksman.enable = true;
        nil_ls.enable = true;
        nushell.enable = true;
        pylsp.enable = true;
        yamlls.enable = true;
      };
    };

    lspkind = {
      enable = true;
    };

    rustaceanvim = {
      enable = true;
      rustAnalyzerPackage = null;

      server = {
        # EOL inlays when?
        # https://github.com/rust-lang/rust-analyzer/issues/4318
        # onAttach = ''
        #   function(client, bufnr)
        #     vim.lsp.inlay_hint.enable(bufnt, true)
        #   end
        # '';
      };

      extraOptions = {
        RustaceanToolOpts.enable_clippy = true;
      };
    };

    nvim-jdtls = {
      enable = true;
      # sneak into `.idea` project folder
      data = ".idea/nvim-jdtls";
    };

    none-ls.enable = true;
  };
}
