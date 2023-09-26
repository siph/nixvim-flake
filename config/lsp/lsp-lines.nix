{
  plugins.lsp-lines.enable = true;
  keymaps = [
    {
      mode = "n";
      key = "<leader>ll";
      action = "<cmd>lua require('lsp_lines').toggle()<CR>";
      options.desc = "Toggle Lines";
    }
  ];
  autoCmd = [
    {
      event = "VimEnter";
      command = "lua require('lsp_lines').toggle()";
    }
  ];
}
