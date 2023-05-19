
{
  plugins = {
    nvim-cmp = {
      enable = true;
      sources = [
        { name = "buffer" ;}
        { name = "path" ;}
        { name = "treesitter" ;}
        { name = "vsnip" ;}
        { name = "nvim_lsp:nil_ls" ;}
      ];
      mapping = {
        "<C-d>" = {
          action = "cmp.mapping.scroll_docs(-4)";
          modes = [ "i" "s" ];
        };
        "<C-f>" = {
          action = "cmp.mapping.scroll_docs(4)";
          modes = [ "i" "s" ];
        };
        "<C-Space>" = {
          action = "cmp.mapping.complete()";
          modes = [ "i" "s" ];
        };
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<Tab>" = {
          modes = ["i" "s"];
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif vim.fn['vsnip#available'](1) == 1 then
                feedkey("<Plug>(vsnip-expand-or-jump)", "")
              elseif has_words_before() then
              cmp.complete()
              else
                fallback()
              end
            end
          '';
        };
        "<S-Tab>" = {
          modes = ["i" "s"];
          action = ''
            function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif vim.fn['vsnip#available'](-1) == 1 then
                feedkeys("<Plug>(vsnip-jump-prev)", "")
              end
            end
          '';
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp-vsnip.enable = true;
    cmp-nvim-lsp.enable = true;
  };
}
