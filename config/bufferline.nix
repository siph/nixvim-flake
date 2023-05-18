{
  plugins.bufferline = {
    enable = true;
    rightMouseCommand = "vertical sbuffer %d";
    numbers = "both";
    diagnostics = "nvim_lsp";
    offsets = [{
      filetype = "NvimTree";
      text = "File Explorer";
      text_align = "left";
    }];
  };
  maps = {
    normal."<A-l>" = {
      action = ":BufferLineCycleNext<CR>";
    };
    normal."<A-h>" = {
      action = ":BufferLineCyclePrev<CR>";
    };
  };
}
