{
  plugins.lspsaga = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>lf" = {
        silent = true;
        desc = "Lsp Find";
        action = "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>";
      };
      "<leader>lh" = {
        silent = true;
        desc = "Lsp Hover";
        action = "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>";
      };
      "<leader>lr" = {
        silent = true;
        desc = "Lsp Rename";
        action = "<cmd>lua require('lspsaga.rename').rename()<CR>";
      };
      "<leader>ld" = {
        silent = true;
        desc = "Lsp Show Description";
        action = "<cmd>lua require('lspsaga.provider').preview_definition()<CR>";
      };
    };
  };
}
