{pkgs, ...}: {
  extraPlugins = with pkgs; [vimPlugins.transparent-nvim];

  extraConfigLua = ''
    vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      vim.tbl_map(function(v)
        return v.hl_group
      end, vim.tbl_values(require('bufferline.config').highlights))
    )

    vim.g.transparent_groups = vim.list_extend(
      vim.g.transparent_groups or {},
      {
        "NormalFloat",
        "NvimTreeNormal",
        "Folded",
        "FoldColumn",
        "TablineFill",
        "ColorColumn",
        "NormalNC",
        "WinSeparator",
        "WinBar",
        "SignColumn",
        "StatusLine",
        "Pmenu",
        "CursorLine",
        "WildMenu",
        "GruvboxBlueSign",
        "GruvboxYellowSign",
        "GruvboxAquaSign",
        "GruvboxGreenSign",
        "GruvboxRedSign",
        "GruvboxPurpleSign",
        "GruvboxOrangeSign",
        "BufferLineDevIconNixSelected",
        "BufferLineDevIconNixInactive",
      }
    )
  '';

  extraConfigVim = ''
    augroup user_colors
      autocmd!
      autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
    augroup END
  '';
}
