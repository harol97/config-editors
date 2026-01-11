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
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim" },
  { "nvim-telescope/telescope-media-files.nvim" },

  -- Git tools
  { "tpope/vim-fugitive" },
  { "rbong/vim-flog" },

  -- Misc
  { "davidgranstrom/nvim-markdown-preview" },

  -- explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {"MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim"}
  },

  {
    "s1n7ax/nvim-window-picker", -- it's to choice window to split or vsplit
    version = "2.*",
    config = function()
      require("window-picker").setup({
        filter_rules = {
          include_current_win = true,
          autoselect_one = true,
          bo = {
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            buftype = { "terminal", "quickfix" },
          },
        },
      })
    end,
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

--vim.lsp.enable('ruff')
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
