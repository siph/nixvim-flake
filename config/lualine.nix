{
  plugins.lualine = {
    enable = true;
    theme = "gruvbox";
    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    sections = {
      lualine_c = [
        {
          name = "filename";
          extraConfig = {
            path = 1;
          };
        }
      ];
    };
  };
}
