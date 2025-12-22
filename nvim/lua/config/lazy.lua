
-- Bootstrap lazy.nvim ---------------------------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugins ---------------------------------------------------------------------
-- require("lazy").setup({
--   -- UI
--   { "tpope/vim-commentary" },
--   { "rktjmp/lush.nvim" },
--   { "christoomey/vim-tmux-navigator" },
--   { "vim-airline/vim-airline" },
--   { "vim-airline/vim-airline-themes" },
--   { "navarasu/onedark.nvim" },
--   { "itchyny/lightline.vim" },
--   { "lukas-reineke/indent-blankline.nvim" },
--   { "airblade/vim-gitgutter" },

--   -- Telescope
--   { "nvim-lua/popup.nvim" },
--   { "nvim-lua/plenary.nvim" },
--   { "nvim-telescope/telescope.nvim" },
--   { "nvim-telescope/telescope-media-files.nvim" },

--   -- Git tools
--   { "tpope/vim-fugitive" },
--   { "rbong/vim-flog" },

--   -- Misc
--   { "davidgranstrom/nvim-markdown-preview" },
--   { "nvim-tree/nvim-tree.lua" },

--   -- LSP + completion
--   { "neovim/nvim-lspconfig" },
--   { "hrsh7th/nvim-cmp" },
--   { "hrsh7th/cmp-nvim-lsp" },
--   { "hrsh7th/cmp-vsnip" },
--   { "hrsh7th/vim-vsnip" },
--   { "mfussenegger/nvim-jdtls" },

--   -- Folding
--   { "kevinhwang91/promise-async" },
--   { "kevinhwang91/nvim-ufo" },
-- })
