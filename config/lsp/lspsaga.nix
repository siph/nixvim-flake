{
  plugins.lspsaga = {
    enable = true;
  };
  maps = {
    normal = {
      "<leader>la" = {
        silent = true;
        desc = "Lsp Code Actions";
        action = "<cmd>Lspsaga code_action<CR>";
      };
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
      "<leader>ly" = {
        silent = true;
        desc = "Lsp Copy Diagnostics";
        action = "<cmd>Lspsaga yank_line_diagnostics<CR>";
      };
    };
  };
}
