
{
  plugins = {
    nvim-cmp = {
      enable = true;
      sources = [
        { name = "buffer"; }
        { name = "luasnip"; }
        { name = "nvim_lsp"; }
        { name = "path"; }
        { name = "treesitter"; }
      ];
      mapping = {
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = ["i" "s"];
        };
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = ["i" "s"];
        };
      };
      snippet.expand = "luasnip";
    };
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp_luasnip.enable = true;
  };
}
