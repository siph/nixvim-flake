{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        jsonls.enable = true;
        lua-ls.enable = true;
        nil_ls.enable = true;
        rust-analyzer.enable = true;
        yamlls.enable = true;
        kotlin-language-server.enable = true;
      };
    };
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    rust-tools = {
      enable = true;
    };
    nvim-jdtls = {
      enable = true;
      # sneak into `.idea` project folder
      data = ".idea/nvim-jdtls";
    };
    null-ls.enable = true;
  };
}
