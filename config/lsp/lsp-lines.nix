{
  plugins.lsp-lines.enable = true;
  maps = {
    normal = {
      "<leader>ll" = {
        desc = "Toggle Lines";
        action = "<cmd>lua require('lsp_lines').toggle()<CR>";
      };
    };
  };
  autoCmd = [
    {
      event = "VimEnter";
      command = "lua require('lsp_lines').toggle()";
    }
  ];
}
