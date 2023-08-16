{
  plugins.lspsaga = {
    enable = true;
    lightbulb = {
      enable = true;
      virtualText = false;
    };
    symbolInWinbar.enable = false;
    ui.border = "rounded";
  };
  maps = {
    normal = {
      "<leader>la" = {
        silent = true;
        desc = "Lsp Code Actions";
        action = "<cmd>Lspsaga code_action<CR>";
      };
      "<leader>lf" = {
        silent = true;
        desc = "Lsp Find";
        action = "<cmd>Lspsaga finder<CR>";
      };
      "<leader>lh" = {
        silent = true;
        desc = "Lsp Hover";
        action = "<cmd>Lspsaga hover_doc<CR>";
      };
      "<leader>lr" = {
        silent = true;
        desc = "Lsp Rename";
        action = "<cmd>Lspsaga rename<CR>";
      };
      "<leader>lp" = {
        silent = true;
        desc = "Lsp Show Definition";
        action = "<cmd>Lspsaga peek_definition<CR>";
      };
      "<leader>ld" = {
        silent = true;
        desc = "Lsp Goto Definition";
        action = "<cmd>Lspsaga goto_definition<CR>";
      };
    };
  };
}
