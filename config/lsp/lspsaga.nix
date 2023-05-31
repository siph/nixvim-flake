{
  plugins.lspsaga = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>lf" = {
        silent = true;
        action = "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>";
      };
      "<leader>lh" = {
        silent = true;
        action = "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>";
      };
      "<leader>lr" = {
        silent = true;
        action = "<cmd>lua require('lspsaga.rename').rename()<CR>";
      };
      "<leader>ld" = {
        silent = true;
        action = "<cmd>lua require('lspsaga.provider').preview_definition()<CR>";
      };
    };
  };
}
