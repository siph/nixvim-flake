{
  plugins.bufferline = {
    enable = true;
    settings.options = {
      numbers = "none";
      diagnostics = "nvim_lsp";
      separator_style = "slope";
    };
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
