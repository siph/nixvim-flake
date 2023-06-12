{
  plugins.vim-bbye = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>b" = {
        desc = "Close Buffer";
        action = "<cmd>Bdelete<CR>";
      };
    };
  };
}
