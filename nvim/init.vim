call plug#begin("~/.local/share/nvim/plugged")

Plug 'https://github.com/tpope/vim-commentary' " comment lines
Plug 'rktjmp/lush.nvim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/navarasu/onedark.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'davidgranstrom/nvim-markdown-preview'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'nvim-tree/nvim-tree.lua'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'https://github.com/mfussenegger/nvim-jdtls'

call plug#end()

source $HOME/.config/nvim/file.lua


" sudo apt-get install xclip
"sure XDG_CONFIG_HOME set export XDG_CONFIG_HOME="$HOME/.config
