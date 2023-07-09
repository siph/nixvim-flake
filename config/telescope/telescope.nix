{
  plugins.telescope = {
    enable = true;
    defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^output/"
        "^target/"
      ];
    };
  };
  maps = {
    normal = {
      "<leader>ff" = {
        desc = "Find Files";
        action = "<cmd>lua require('telescope.builtin').find_files({hidden = true})<CR>";
      };
      "<leader>fg" = {
        desc = "Grep Files";
        action = "<cmd>lua require('telescope.builtin').live_grep({hidden = true})<CR>";
      };
      "<leader>fb" = {
        desc = "Find Buffer";
        action = "<cmd>lua require('telescope.builtin').buffers()<CR>";
      };
      "<leader>fh" = {
        desc = "Find Help";
        action = "<cmd>lua require('telescope.builtin').help_tags()<CR>";
      };
      "<leader>fd" = {
        desc = "Find Diagnostics";
        action = "<cmd>lua require('telescope.builtin').diagnostics()<CR>";
      };
      "<leader>ft" = {
        desc = "Find Treesitter";
        action = "<cmd>lua require('telescope.builtin').treesitter()<CR>";
      };
    };
  };
}
