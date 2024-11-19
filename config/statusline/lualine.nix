{pkgs, ...}: {
  plugins.lualine = {
    enable = true;

    settings = {
      sections = {
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
          }
        ];
      };

      options = {
        component_separators = "";
        section_separators = "";

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
    };
  };
}
