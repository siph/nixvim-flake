{
  plugins.nvim-tree = {
    enable = true;
    git = {
      enable = true;
      ignore = false;
    };
    renderer.indentWidth = 1;
    diagnostics.enable = true;
    view.float.enable = true;
    updateFocusedFile.enable = true;
  };

  maps.normal = {
    "<C-n>" = {
      desc = "Toggle Tree";
      action = "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>";
    };
  };
}
