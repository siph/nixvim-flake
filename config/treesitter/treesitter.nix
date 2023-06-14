{
  plugins = {
    treesitter = {
      enable = true;
      indent = false;
      nixvimInjections = true;
    };
    treesitter-context.enable = true;
    treesitter-rainbow.enable = true;
    treesitter-playground.enable = true;
  };
}
