{
  plugins.lualine = {
    enable = true;
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

    theme = let
      colors = {
        aqua = "#8ec07c";
        black = "#282828";
        blue = "#83a598";
        darkgray = "#3c3836";
        gray = "#a89984";
        green = "#b8bb26";
        inactivegray = "#7c6f64";
        lightgray = "#504945";
        red = "#fb4934";
        transparent = "none";
        white = "#ebdbb2";
        yellow = "#fe8019";
      };
    in {
      normal = {
        a = {
          bg = colors.transparent;
          fg = colors.white;
          gui = "bold";
        };
        b = {
          bg = colors.transparent;
          fg = colors.yellow;
        };
        c = {
          bg = colors.transparent;
          fg = colors.gray;
        };
      };
    };
  };
}
