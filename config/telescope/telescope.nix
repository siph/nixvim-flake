{
  plugins.telescope = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>ff" = {
        desc = "Find Files";
        action = "<cmd>lua require('telescope.builtin').find_files()<CR>";
      };
      "<leader>fg" = {
        desc = "Grep Files";
        action = "<cmd>lua require('telescope.builtin').live_grep()<CR>";
      };
      "<leader>fb" = {
        desc = "Find Buffer";
        action = "<cmd>lua require('telescope.builtin').buffers()<CR>";
      };
      "<leader>fh" = {
        desc = "Find Help";
        action = "<cmd>lua require('telescope.builtin').help_tags()<CR>";
      };
      "<leader>ft" = {
        desc = "Find Treesitter";
        action = "<cmd>lua require('telescope.builtin').treesitter()<CR>";
      };
    };
  };
}
