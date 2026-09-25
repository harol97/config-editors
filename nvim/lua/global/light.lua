vim.cmd.colorscheme("github_light")

-- Overrides solo del tema light --------------------------------------------------
local function apply_light_overrides()
  if vim.g.colors_name ~= "github_light" then
    return
  end

  -- color de los comentarios de este tema.
  local fg = vim.api.nvim_get_hl(0, { name = "Comment" }).fg

  -- Mensajes de diagnóstico (p. ej. "no se encuentra el tipado de la librería"
  -- al importar en JS): github_light los pinta casi invisibles sobre el fondo
  -- blanco. Los dejamos con el mismo color que los comentarios.
  for _, group in ipairs({
    "DiagnosticError",
    "DiagnosticWarn",
    "DiagnosticInfo",
    "DiagnosticHint",
    "DiagnosticVirtualTextError",
    "DiagnosticVirtualTextWarn",
    "DiagnosticVirtualTextInfo",
    "DiagnosticVirtualTextHint",
  }) do
    vim.api.nvim_set_hl(0, group, { fg = fg })
  end

  -- Barra de las ventanas sin foco: por defecto github_light la pinta del mismo
  -- blanco que el fondo (hide_nc_statusline = true), así que no se ve nada.
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = fg })
end

-- El colorscheme resetea todos los highlights al cargar, así que reaplicamos
-- después de cada carga (y una vez ahora, para la sesión ya iniciada).
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("LightThemeOverrides", { clear = true }),
  callback = apply_light_overrides,
})

apply_light_overrides()