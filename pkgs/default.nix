{
  system,
  nixvim,
}: {
  nixvimLib = nixvim.lib.${system};
}
