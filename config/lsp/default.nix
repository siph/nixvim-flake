{
  imports = [
    ./lsp-lines.nix
    ./lsp.nix
    ./lspsaga.nix
    ./luasnip.nix
    # This is conflicting (scm files) with `tree-sitter-nu`
    # ./nushell.nix
    ./nvim-cmp.nix
  ];
}
