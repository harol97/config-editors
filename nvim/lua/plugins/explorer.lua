-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
--
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end
  api.config.mappings.default_on_attach(bufnr)
  vim.keymap.set("n", "E",          api.node.open.vertical,             opts("Open: Vertical Split"))
  vim.keymap.set("n", "s",          api.node.open.horizontal,             opts("Open: horizontal Split"))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  diagnostics = {
    enable = true
  },
  view = {
    width = 40,
    side = "right"
  },
})

vim.keymap.set("n", "<space>b", "<Cmd>:NvimTreeToggle<CR>")
