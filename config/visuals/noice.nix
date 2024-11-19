{
  plugins = {
    noice = {
      enable = true;
      settings = {
        notify.enabled = true;
        lsp = {
          override = {
            "vim.lsp.util.convert_input_to_markdown_lines" = true;
            "vim.lsp.util.stylize_markdown" = true;
            "cmp.entry.get_documentation" = true;
          };
          progress.enabled = false;
        };
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>fm";
      action = "<cmd>lua require('noice').cmd('telescope')<CR>";
      options.desc = "Find Messages";
    }
    {
      mode = "n";
      key = "<leader>c";
      action = "<cmd>lua require('noice').cmd('dismiss')<CR>";
      options.desc = "Clear Messages";
    }
  ];
}
