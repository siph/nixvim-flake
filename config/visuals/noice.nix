{
  plugins = {
    noice = {
      enable = true;
      notify.enabled = true;
    };
  };
  maps.normal = {
    "<leader>c" = {
      desc = "Clear Messages";
      action = "<cmd>lua require('noice').cmd('dismiss')<CR>";
    };
    "<leader>fm" = {
      desc = "Find Messages";
      action = "<cmd>lua require('noice').cmd('telescope')<CR>";
    };
  };
}
