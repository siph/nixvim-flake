{
  system,
  nixvim,
  nix-colors,
}: {
  nixvimLib = nixvim.lib.${system};

  nix-colors = nix-colors.colorSchemes;
}
