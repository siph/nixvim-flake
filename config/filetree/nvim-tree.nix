{
  plugins.nvim-tree = {
    enable = true;
    diagnostics = {
      enable = true;
    };
    git = {
      enable = true;
      ignore = false;
    };
  };
  maps.normal = {
    "<C-n>" = {
      desc = "Toggle Tree";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
    };
  };
}
