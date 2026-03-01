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

vim.g.airline_theme = 'zenburn'