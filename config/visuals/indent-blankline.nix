{
  plugins.indent-blankline = {
    enable = true;
    char = "";
    useTreesitter = true;
    showCurrentContext = false;
    showEndOfLine = true;
  };
  extraConfigLua = ''
    vim.wo.colorcolumn = "99999"
    vim.opt.list = true
    vim.opt.listchars:append("trail:●")
  '';
}
