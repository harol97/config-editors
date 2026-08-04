-- Números de línea en blanco -------------------------------------------------
-- Solo aplica sobre el tema que usamos actualmente ("dark", cargado en
-- global/dark.lua). Si algún día cambias a otro colorscheme (p. ej.
-- github_light), este override no se activa y el tema queda intacto.

local THEME = "dark"
-- Blanco suave (fg de JetBrains Dark), no #ffffff: contrasta sin encandilar
-- sobre el fondo #1E1F22.
local white = "#bcbec4"

local function set_line_number_colors()
  if vim.g.colors_name ~= THEME then
    return
  end
  -- LineNr: número de las líneas que no son la actual.
  -- LineNrAbove / LineNrBelow: usados cuando relativenumber está activo.
  vim.api.nvim_set_hl(0, "LineNr", { fg = white })
  vim.api.nvim_set_hl(0, "LineNrAbove", { fg = white })
  vim.api.nvim_set_hl(0, "LineNrBelow", { fg = white })
  -- Línea actual: también en blanco, en negrita para seguir distinguiéndola.
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = white, bold = true })
end

-- El colorscheme resetea todos los highlights al cargar, así que reaplicamos
-- después de cada carga (y una vez ahora, para la sesión ya iniciada).
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("WhiteLineNumbers", { clear = true }),
  callback = set_line_number_colors,
})

set_line_number_colors()
