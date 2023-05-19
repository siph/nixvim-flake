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
  maps.normal."<C-n>".action = ":NvimTreeToggle<CR>";
}
