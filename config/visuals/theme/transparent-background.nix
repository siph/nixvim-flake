{
  highlight = {
    Normal = {
      bg = "none";
    };
    NormalFloat = {
      bg = "none";
    };
    NormalNC = {
      bg = "none";
    };
  };

  extraConfigVim = ''
      augroup user_colors
        autocmd!
        autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
      augroup END
  '';
}
