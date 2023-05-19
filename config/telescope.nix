{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader>fb" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>fs" = "treesitter";
    };
  };
  maps.normal."<leader>ft".action = "<cmd> Telescope<CR>";
}
