vim.keymap.set("n", "<space>a", "ggVG<CR>")
-- Recarga la config sin cerrar Neovim. No puede usar :source $MYVIMRC
-- porque lazy.nvim no permite re-ejecutar lazy.setup(); en su lugar
-- limpia los módulos propios y los vuelve a requerir.
vim.keymap.set("n", "<F9>", function()
  for name in pairs(package.loaded) do
    if name:match("^global") or name:match("^features") or name:match("^lsp") then
      package.loaded[name] = nil
    end
  end
  require("global")
  require("features")
  require("lsp")
  vim.notify("Config recargada", vim.log.levels.INFO)
end, { desc = "Reload config" })
