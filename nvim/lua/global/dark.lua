vim.opt.background = "dark"

local bg_color = "#181818" -- alacritty
bg_color = "#282828" -- gruvbox hard

require("onedark").setup({
  style = "darker",
  colors = {
    bg0 = bg_color,
    fg = "#dcdfe4"
  },
  highlights = {
    Comment = { fg = "#7f848e"},
  },
})

vim.cmd.colorscheme('sonokai')
vim.g.sonokai_style = "andromeda"


-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg_color })
-- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = bg_color })
-- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = bg_color })
