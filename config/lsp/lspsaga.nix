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

  keymaps = [
    {
      mode = "n";
      key = "<leader>la";
      options.desc = "Lsp Code Actions";
      action = "<cmd>Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<leader>lf";
      options.desc = "Lsp Find";
      action = "<cmd>Lspsaga finder<CR>";
    }
    {
      mode = "n";
      key = "<leader>lh";
      options.desc = "Lsp Hover";
      action = "<cmd>Lspsaga hover_doc<CR>";
    }
    {
      mode = "n";
      key = "<leader>lr";
      options.desc = "Lsp Rename";
      action = "<cmd>Lspsaga rename<CR>";
    }
    {
      mode = "n";
      key = "<leader>lp";
      options.desc = "Lsp Show Definition";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>ld";
      options.desc = "Lsp Goto Definition";
      action = "<cmd>Lspsaga goto_definition<CR>";
    }
  ];
}
