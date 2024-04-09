{
  plugins.gitsigns = {
    enable = true;
    settings.current_line_blame = false;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>lua require('gitsigns').diffthis()<CR>";
      options.desc = "Git Diff";
    }
    {
      mode = "n";
      key = "<leader>gr";
      action = "<cmd>lua require('gitsigns').refresh()<CR>";
      options.desc = "Git Refresh";
    }
    {
      mode = "n";
      key = "<leader>gb";
      action = "<cmd>lua require('gitsigns').blame_line()<CR>";
      options.desc = "Git Blame";
    }
    {
      mode = "n";
      key = "<leader>ghv";
      action = "<cmd>lua require('gitsigns').select_hunk()<CR>";
      options.desc = "Git Hunk Visual Select";
    }
    {
      mode = "n";
      key = "<leader>ghp";
      action = "<cmd>lua require('gitsigns').preview_hunk()<CR>";
      options.desc = "Git Hunk Preview";
    }
    {
      mode = "n";
      key = "<leader>ghr";
      action = "<cmd>lua require('gitsigns').reset_hunk()<CR>";
      options.desc = "Git Hunk Reset";
    }
    {
      mode = "n";
      key = "<leader>ghs";
      action = "<cmd>lua require('gitsigns').stage_hunk()<CR>";
      options.desc = "Git Hunk Stage";
    }
    {
      mode = "n";
      key = "<leader>ghu";
      action = "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>";
      options.desc = "Git Hunk Undo Stage";
    }
  ];
}
