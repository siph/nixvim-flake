{
  extraConfigLua = ''
    vim.api.nvim_create_autocmd("TextYankPost", {
      desc = "Highlight on yank",
      callback = function()
        vim.highlight.on_yank({ higroup = "Search", timeout = 200 })
      end,
    })
  '';
}
