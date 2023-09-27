{
  pkgs,
  inputs,
}: {
  nixvimLib = inputs.nixvim.lib.${pkgs.system};
}
