{pkgs, ...}: {
  colorschemes.gruvbox = {
    enable = true;

    settings = {
      true_color = true;
      contrast_dark = "hard";
    };
  };

  highlight = with pkgs.nix-colors.gruvbox-dark-hard.palette; {
    BufferlineSeparator.fg = "#${base06}";
    BufferlineTabSeparator.fg = "#${base06}";
    BufferLineTabClose.fg = "#${base06}";
    BufferLineSeparatorSelected.fg = "#${base06}";
    BufferLineSeparatorVisible.fg = "#${base06}";
    BufferLineTabSeparatorVisible.fg = "#${base06}";
    BufferLineGroupLabel.fg = "#${base06}";
    NvimTreeWinSeparator.fg = "#${base06}";
    # This isn't working?
    NvimTreeFolderIcon.fg = "#${base06}";

    GruvboxGreenSign = {
      bg = "none";
      fg = "#${base0B}";
    };

    GruvboxRedSign = {
      bg = "none";
      fg = "#${base08}";
    };

    GruvboxBlueSign = {
      bg = "none";
      fg = "#${base0D}";
    };

    GruvboxYellowSign = {
      bg = "none";
      fg = "#${base0A}";
    };

    GruvboxAquaSign = {
      bg = "none";
      fg = "#${base0C}";
    };
  };
}
