{
  plugins.treesitter-context.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<leader>tc";
      action = "<cmd>TSContext toggle<CR>";
      options.desc = "Toggle treesitter context";
    }
  ];
}
