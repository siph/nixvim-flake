{
  plugins.vim-bbye = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>b";
      action = "<cmd>Bdelete<CR>";
      options.desc = "Close Buffer";
    }
  ];
}
