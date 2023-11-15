Neovim configuration build using
[nixvim](https://github.com/nix-community/nixvim) complete with lsp,
treesitter, and more.

## Screenshot
![screenshot](./doc/ss_1.png)

## How to Run

You can run this directly from the command line with:
```shell
# Full featured version
nix run github:siph/nixvim-flake

# Lighter version without lsp.
nix run github:siph/nixvim-flake#lite
```

You can also plug this into a flake to include it into a system configuration.
```nix
{
  inputs = {
    chris-neovim.url = "github:siph/nixvim-flake";
  };
}
```

This input can then be used as an overlay to replace the default neovim.
```nix
{ chris-neovim, ... }:
{
    overlays = (final: prev: {
      neovim = chris-neovim.packages.${prev.system}.default;
    });
}
```
You can find more information on building your own flake
[here](https://gist.github.com/siph/288b7c6b5f68a1902d28aebc95fde4c5).
