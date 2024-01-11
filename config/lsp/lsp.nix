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
