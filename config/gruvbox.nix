{
  colorschemes.gruvbox = {
    enable = true;
    contrastDark = "hard";
    trueColor = true;
  };

  # Background transparency until I can figure out `autoCmd` and `autoGroup` options
  extraConfigVim = ''
      augroup user_colors
        autocmd!
        autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
      augroup END
  '';
}
