{pkgs, ...}: {
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

    theme = with pkgs.nix-colors.gruvbox-dark-hard.palette; {
      normal = {
        a = {
          bg = "none";
          fg = "#${base06}";
          gui = "bold";
        };

        b = {
          bg = "none";
          fg = "#${base09}";
        };

        c = {
          bg = "none";
          fg = "#${base04}";
        };
      };
    };
  };
}
