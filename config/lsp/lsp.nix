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
    lsp-lines.enable = true;
    lspkind = {
      enable = true;
      cmp.enable = true;
    };
    crates-nvim.enable = true;
    rust-tools = {
      enable = true;
    };
    nvim-jdtls = {
      enable = true;
      # sneak into `.idea` project folder
      data = ".idea/nvim-jdtls";
    };
  };
  maps = {
    normal = {
      "<leader>ll" = {
        desc = "Toggle Lines";
        action = "<cmd>lua require('lsp_lines').toggle()<CR>";
      };
    };
  };
}
