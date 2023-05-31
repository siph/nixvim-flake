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
      };
    };
    lsp-lines.enable = true;
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    lspsaga = {
      enable = true;
    };
    rust-tools = {
      enable = true;
    };
  };
}
