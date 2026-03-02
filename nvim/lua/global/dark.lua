vim.opt.background = "dark"
vim.g.onedark_config = {
  style = 'darker',
  colors = {
    bg0 = '#181818',
  },
  highlights = {
    Comment = { fg = "#7f848e"},
  },
}
vim.cmd.colorscheme('onedark')
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "#181818" })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "#181818" })
