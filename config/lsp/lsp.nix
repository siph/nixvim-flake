{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        lua-ls.enable = true;
        nil_ls.enable = true;
        yamlls.enable = true;
        pylsp.enable = true;
        kotlin-language-server.enable = true;
      };
    };
    lspkind = {
      enable = true;
    };
    rust-tools = {
      enable = true;
      server.check.command = "clippy";
    };
    nvim-jdtls = {
      enable = true;
      # sneak into `.idea` project folder
      data = ".idea/nvim-jdtls";
    };
    none-ls.enable = true;
  };
}
