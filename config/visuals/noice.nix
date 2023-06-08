{
  plugins = {
    noice = {
      enable = true;
      notify.enabled = true;
      lsp.override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
      };
    };
  };
  maps.normal = {
    "<leader>c" = {
      desc = "Clear Messages";
      action = "<cmd>lua require('noice').cmd('dismiss')<CR>";
    };
    "<leader>fm" = {
      desc = "Find Messages";
      action = "<cmd>lua require('noice').cmd('telescope')<CR>";
    };
  };
}
