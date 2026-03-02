require("config.lazy")

-- Plugins ---------------------------------------------------------------------
require("lazy").setup({
  -- Theme
  { "navarasu/onedark.nvim" },        -- dark theme
  { "cormacrelf/vim-colors-github" }, -- light theme (GitHub style)

  -- Essentials / Utilities
  { "tpope/vim-commentary" },        -- comment lines easily with gc
  { "rktjmp/lush.nvim" },            -- framework for creating color schemes
  { "christoomey/vim-tmux-navigator" }, -- navigate between Vim and tmux seamlessly
  { "vim-airline/vim-airline" },     -- lightweight status line
  { "vim-airline/vim-airline-themes" }, -- themes for vim-airline
  { "itchyny/lightline.vim" },       -- lightweight alternative to vim-airline
  { "lukas-reineke/indent-blankline.nvim" }, -- show indentation guides
  { "airblade/vim-gitgutter" },      -- shows git changes in the sign column

  -- Telescope
  { 
    "nvim-telescope/telescope-file-browser.nvim", -- file browser for Telescope
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  -- Git Tools
  { "tpope/vim-fugitive" },          -- git commands inside Vim
  { "rbong/vim-flog" },              -- visual git commit history

  -- Misc
  { "davidgranstrom/nvim-markdown-preview" }, -- live Markdown preview in browser

  -- Explorer
  {
    "nvim-tree/nvim-tree.lua",       -- tree-style file explorer
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" } -- icons for nvim-tree
  },

  -- LSP + Completion
  { "neovim/nvim-lspconfig" },       -- LSP configuration
  { "hrsh7th/nvim-cmp" },            -- autocompletion
  { "hrsh7th/cmp-nvim-lsp" },        -- LSP source for nvim-cmp
  { "hrsh7th/cmp-vsnip" },           -- snippet source for nvim-cmp
  { "hrsh7th/vim-vsnip" },           -- snippet engine

  -- Folding
  { "kevinhwang91/promise-async" },  -- dependency for nvim-ufo
  { "kevinhwang91/nvim-ufo" },       -- smart code folding
})

require("global")
require("features")
require("lsp")
