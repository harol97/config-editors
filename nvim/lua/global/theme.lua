-- Statusline nativa -----------------------------------------------------------
-- 100% nativa: la rama se obtiene llamando al `git` del sistema (sin plugins).
vim.opt.laststatus = 2 -- mostrar siempre la statusline

-- Devuelve la rama de git actual.
--   " <rama>"        si estamos dentro de un repo git
--   " install git"  si el binario `git` no está instalado
--   ""               si git existe pero no estamos en un repo
function _G.git_branch()
  -- ¿Está instalado git en el sistema?
  if vim.fn.executable("git") == 0 then
    return "  install git "
  end
  -- Carpeta del archivo actual (o el cwd si el buffer no tiene nombre).
  local dir = vim.fn.expand("%:p:h")
  if dir == "" then
    dir = vim.fn.getcwd()
  end
  local branch = vim.fn.systemlist(
    { "git", "-C", dir, "rev-parse", "--abbrev-ref", "HEAD" }
  )[1]
  -- v:shell_error == 0 significa que el comando tuvo éxito (estamos en un repo).
  if vim.v.shell_error == 0 and branch and branch ~= "" then
    return "  " .. branch .. " "
  end
  return ""
end

vim.opt.statusline = table.concat({
  " %f",              -- ruta del archivo
  " %m%r",            -- [+] modificado / [RO] solo lectura
  "%{v:lua.git_branch()}", -- rama de git
  "%=",              -- separador (empuja lo siguiente a la derecha)
  "%y ",             -- tipo de archivo
  "%{&fileencoding} ", -- codificación (utf-8, etc.)
  "%{&fileformat} ", -- formato de línea (unix/dos)
  "%l:%c ",          -- línea:columna
  "%p%% ",           -- porcentaje del archivo
})
