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
    width = 80,
    side = "right"
  },
  filters = {
    git_ignored = false
  },
  update_focused_file = {
    enable = true,
    update_root = {
      enable = true
    }
  }
})

vim.keymap.set("n", "<space>b", "<Cmd>:NvimTreeToggle<CR>")
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#181818" })