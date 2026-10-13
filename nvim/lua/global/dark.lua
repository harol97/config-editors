vim.opt.background = "dark"

local bg_color = "#181818" -- alacritty
bg_color = "#282828" -- gruvbox hard
bg_color="#1E1F22" -- dark

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

vim.cmd.colorscheme('dark')

-- Color del cursor (cámbialo aquí). El colorscheme resetea los highlights al
-- cargar, así que se reaplica después de cada carga.
local function apply_dark_cursor()
  if vim.g.colors_name ~= "dark" then
    return
  end
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#1e1f22", bg = "#ffc107" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("DarkThemeCursor", { clear = true }),
  callback = apply_dark_cursor,
})

apply_dark_cursor()


-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = bg_color })
-- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = bg_color })
-- vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = bg_color })
