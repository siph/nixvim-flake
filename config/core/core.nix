{
  config = {
    globals = {
      mapleader = " ";
      loaded_ruby_provider = 0;
      loaded_perl_provider = 0;
      loaded_python_provider = 0;
    };
    maps = {
      normal = {
        "<leader>q" = {
          desc = "Quit NeoVim";
          action = "<cmd>qa<CR>";
        };
        "<leader>w" = {
          desc = "Save Current Buffer";
          action = "<cmd>w<CR>";
        };

        "<C-h>" = {
          action = "<C-w>h";
        };
        "<C-j>" = {
          action = "<C-w>j";
        };
        "<C-k>" = {
          action = "<C-w>k";
        };
        "<C-l>" = {
          action = "<C-w>l";
        };
      };
    };
    clipboard = {
      register = "unnamedplus";
      providers = {
        xsel.enable = true;
        wl-copy.enable = true;
      };
    };
    options = {
      autoindent = true;
      expandtab = true;
      hidden = true;
      ignorecase = true;
      incsearch = true;
      number = true;
      relativenumber = true;
      scrolloff = 15;
      shiftwidth = 4;
      signcolumn = "yes";
      smartcase = true;
      softtabstop = 4;
      spell = true;
      splitbelow = true;
      splitright = true;
      tabstop = 4;
      termguicolors = true;
      updatetime = 100;
    };
    autoCmd = [
      {
        event = "FileType";
        pattern = "nix";
        command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2";
      }
    ];
  };
}
