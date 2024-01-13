{
  plugins.treesitter-context.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>tc";
      action = "<cmd>TSContextToggle<CR>";
      options.desc = "Toggle treesitter context";
    }
  ];
}
