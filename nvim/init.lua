require("config.lazy")

-- Plugins ---------------------------------------------------------------------
require("lazy").setup({
  -- UI
  { "tpope/vim-commentary" },
  { "rktjmp/lush.nvim" },
  { "christoomey/vim-tmux-navigator" },
  { "vim-airline/vim-airline" },
  { "vim-airline/vim-airline-themes" },
  { "navarasu/onedark.nvim" },
  { "itchyny/lightline.vim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "airblade/vim-gitgutter" },

  -- Telescope
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

  -- Git tools
  { "tpope/vim-fugitive" },
  { "rbong/vim-flog" },

  -- Misc
  { "davidgranstrom/nvim-markdown-preview" },

  -- explorer
  
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },

  -- LSP + completion
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-vsnip" },
  { "hrsh7th/vim-vsnip" },
  { "mfussenegger/nvim-jdtls" },

  -- Folding
  { "kevinhwang91/promise-async" },
  { "kevinhwang91/nvim-ufo" },
})


vim.diagnostic.config({
  virtual_lines = true
})

require("ibl").setup()

require("global")
require("plugins")
require("lsp")

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set("n", "gd", function() 
  -- vim.cmd("split")  -- abre un split horizontal
  builtin.lsp_definitions({jump_type="split"})
end, { noremap = true, silent = true })

local local_config = vim.fn.getcwd() .. "/.vim/init.lua"
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
