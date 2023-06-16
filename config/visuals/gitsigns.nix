{
  plugins.gitsigns = {
    enable = true;
    currentLineBlame = false;
  };
  maps = {
    normal = {
      "<leader>gd" = {
        desc = "Git Diff";
        action = "<cmd>lua require('gitsigns').diffthis()<CR>";
      };
      "<leader>gr" = {
        desc = "Git Refresh";
        action = "<cmd>lua require('gitsigns').refresh()<CR>";
      };
      "<leader>gb" = {
        desc = "Git Blame";
        action = "<cmd>lua require('gitsigns').blame_line()<CR>";
      };
      "<leader>ghv" = {
        desc = "Git Hunk Visual Select";
        action = "<cmd>lua require('gitsigns').select_hunk()<CR>";
      };
      "<leader>ghp" = {
        desc = "Git Hunk Preview";
        action = "<cmd>lua require('gitsigns').preview_hunk()<CR>";
      };
      "<leader>ghr" = {
        desc = "Git Hunk Reset";
        action = "<cmd>lua require('gitsigns').reset_hunk()<CR>";
      };
      "<leader>ghs" = {
        desc = "Git Hunk Stage";
        action = "<cmd>lua require('gitsigns').stage_hunk()<CR>";
      };
      "<leader>ghu" = {
        desc = "Git Hunk Undo Stage";
        action = "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>";
      };
    };
  };
}
