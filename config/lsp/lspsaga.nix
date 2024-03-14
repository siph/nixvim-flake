{pkgs, ...}: {
  plugins.lspsaga = {
    enable = true;

    # https://github.com/nvimdev/lspsaga.nvim/issues/1405
    package = with pkgs;
      vimUtils.buildVimPlugin {
        pname = "lspsaga.nvim";
        version = "2024-03-12";
        src = fetchFromGitHub {
          owner = "nvimdev";
          repo = "lspsaga.nvim";
          rev = "f63b794a89d376487c166d19707368d49c810b91";
          sha256 = "cpBnwDKpI0R/mEUXT6Bx0HDkLOY59KP2Dz+dRYrbe0o=";
        };
      };

    lightbulb = {
      enable = true;
      virtualText = false;
    };

    symbolInWinbar.enable = false;
    ui.border = "rounded";
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>la";
      options.desc = "Lsp Code Actions";
      action = "<cmd>Lspsaga code_action<CR>";
    }
    {
      mode = "n";
      key = "<leader>lf";
      options.desc = "Lsp Find";
      action = "<cmd>Lspsaga finder<CR>";
    }
    {
      mode = "n";
      key = "<leader>lh";
      options.desc = "Lsp Hover";
      action = "<cmd>Lspsaga hover_doc<CR>";
    }
    {
      mode = "n";
      key = "<leader>lr";
      options.desc = "Lsp Rename";
      action = "<cmd>Lspsaga rename<CR>";
    }
    {
      mode = "n";
      key = "<leader>lp";
      options.desc = "Lsp Show Definition";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
    {
      mode = "n";
      key = "<leader>ld";
      options.desc = "Lsp Goto Definition";
      action = "<cmd>Lspsaga goto_definition<CR>";
    }
  ];
}
