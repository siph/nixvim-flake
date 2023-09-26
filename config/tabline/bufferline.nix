{
  plugins.bufferline = {
    enable = true;
    numbers = "none";
    diagnostics = "nvim_lsp";
    separatorStyle = "slope";
  };
  keymaps = [
    {
      mode = "n";
      key = "<A-l>";
      action = "<Cmd>BufferLineCycleNext<CR>";
      options.desc = "Next Buffer";
    }
    {
      mode = "n";
      key = "<A-h>";
      action = "<Cmd>BufferLineCyclePrev<CR>";
      options.desc = "Previous Buffer";
    }
  ];
}
