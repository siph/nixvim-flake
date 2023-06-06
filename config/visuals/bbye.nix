{
  plugins.vim-bbye = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>bd" = {
        desc = "Close Buffer";
        action = "<cmd>Bdelete<CR>";
      };
    };
  };
}
