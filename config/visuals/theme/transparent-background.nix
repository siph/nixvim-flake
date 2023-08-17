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
    WinSeparator = {
      bg = "none";
    };
    WinBar = {
      bg = "none";
    };
    SignColumn = {
      bg = "none";
    };
    StatusLine = {
      bg = "none";
    };
    Pmenu = {
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
