{
  globals = {
    mapleader = " ";
  };
  maps = {
    normal = {
      "<leader>q" = {
        action = "<cmd>qa<CR>";
      };
      "<leader>w" = {
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
  extraConfigVim = ''
      set tabstop=4
      set shiftwidth=4
      set softtabstop=4
      set expandtab
      set hidden
      set scrolloff=15
      set spell
      set splitbelow
      set splitright
      set signcolumn=yes
      set autoindent
      set noerrorbells
      set novisualbell
      set relativenumber
      set clipboard+=unnamedplus
      set nowrap
      set nohlsearch
      set incsearch
      " Highlight on yank
      augroup highlight_yank
          autocmd!
          au TextYankPost * silent! lua vim.highlight.on_yank{higroup="Search", timeout=200}
      augroup END
  '';
}
