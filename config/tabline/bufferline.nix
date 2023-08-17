{
  plugins.bufferline = {
    enable = true;
    numbers = "none";
    diagnostics = "nvim_lsp";
    separatorStyle = "slope";
  };
  maps = {
    normal."<A-l>" = {
      action = "<Cmd>BufferLineCycleNext<CR>";
    };
    normal."<A-h>" = {
      action = "<Cmd>BufferLineCyclePrev<CR>";
    };
  };
}
