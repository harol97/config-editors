vim.opt.background = "dark"

require("onedark").setup({
  style = "darker",
  colors = {
    bg0 = "#181818",
    fg = "#b9bcc0"
  },
  highlights = {
    Comment = { fg = "#7f848e"},
  },
})
vim.cmd.colorscheme('onedark')


vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#181818" })
