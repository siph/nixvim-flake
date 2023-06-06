{
  plugins.alpha = {
    enable = true;
    layout = [
      {
        type = "padding";
        val = 1;
      }
      {
        opts = {
          hl = "Type";
          position = "center";
        };
        type = "text";
        val = [
          "          ▗▄▄▄       ▗▄▄▄▄    ▄▄▄▖         "
          "          ▜███▙       ▜███▙  ▟███▛         "
          "           ▜███▙       ▜███▙▟███▛          "
          "            ▜███▙       ▜██████▛           "
          "     ▟█████████████████▙ ▜████▛     ▟▙     "
          "    ▟███████████████████▙ ▜███▙    ▟██▙    "
          "           ▄▄▄▄▖           ▜███▙  ▟███▛    "
          "          ▟███▛             ▜██▛ ▟███▛     "
          "         ▟███▛               ▜▛ ▟███▛      "
          "▟███████████▛                  ▟██████████▙"
          "▜██████████▛                  ▟███████████▛"
          "      ▟███▛ ▟▙               ▟███▛         "
          "     ▟███▛ ▟██▙             ▟███▛          "
          "    ▟███▛  ▜███▙           ▝▀▀▀▀           "
          "    ▜██▛    ▜███▙ ▜██████████████████▛     "
          "     ▜▛     ▟████▙ ▜████████████████▛      "
          "           ▟██████▙       ▜███▙            "
          "          ▟███▛▜███▙       ▜███▙           "
          "         ▟███▛  ▜███▙       ▜███▙          "
          "         ▝▀▀▀    ▀▀▀▀▘       ▀▀▀▘          "
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        type = "group";
        val = [
          {
            command = "<CMD>Telescope find_files<CR>";
            desc = "  Find File";
            shortcut = "f";
          }
          {
            command = ":qa<CR>";
            desc = "  Quit Neovim";
            shortcut = "q";
          }
        ];
      }
      {
        type = "padding";
        val = 2;
      }
      {
        opts = {
          hl = "Keyword";
          position = "center";
        };
        type = "text";
        val = "https://github.com/siph/nixvim-flake";
      }
    ];
  };
}
