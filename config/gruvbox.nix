{
  colorschemes.gruvbox = {
    enable = true;
    contrastDark = "hard";
    trueColor = true;
  };

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

  # Background transparency until I can figure why bufferline isn't fully transparent.
  extraConfigVim = ''
      augroup user_colors
        autocmd!
        autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
      augroup END
  '';
}
