{pkgs, ...}: {
  plugins.lspsaga = {
    enable = true;
    lightbulb = {
      enable = true;
      virtualText = false;
    };
    symbolInWinbar.enable = false;
    ui.border = "rounded";
  };
  maps.normal = pkgs.nixvimLib.helpers.mkModeMaps {silent = true;} {
    "<leader>la" = {
      desc = "Lsp Code Actions";
      action = "<cmd>Lspsaga code_action<CR>";
    };
    "<leader>lf" = {
      desc = "Lsp Find";
      action = "<cmd>Lspsaga finder<CR>";
    };
    "<leader>lh" = {
      desc = "Lsp Hover";
      action = "<cmd>Lspsaga hover_doc<CR>";
    };
    "<leader>lr" = {
      desc = "Lsp Rename";
      action = "<cmd>Lspsaga rename<CR>";
    };
    "<leader>lp" = {
      desc = "Lsp Show Definition";
      action = "<cmd>Lspsaga peek_definition<CR>";
    };
    "<leader>ld" = {
      desc = "Lsp Goto Definition";
      action = "<cmd>Lspsaga goto_definition<CR>";
    };
  };
}
