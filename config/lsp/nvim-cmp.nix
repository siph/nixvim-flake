{
  plugins = {
    cmp = {
      enable = true;

      settings = {
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";

        # It's annoying to have to `shift+tab` up to what I want to select, these
        # settings stop `cmp` from starting in the middle of the list.
        completion.completeopt = "noselect";
        preselect = "None";

        mapping = {
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        };

        sources = [
          {name = "path";}
          {name = "nvim_lsp";}
          {name = "luasnip";}
          {name = "crates";}
          {name = "buffer";}
        ];
      };
    };
  };

  # I keep accidentally pressing `q` which prevents `cmp` from working because
  # of the macro recording. I don't use this anyway.
  keymaps = [
    {
      mode = "n";
      key = "q";
      action = "<Nop>";
    }
  ];
}
