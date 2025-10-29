vim.diagnostic.config({
  virtual_lines = true
})

require("ibl").setup()

--vim.lsp.enable('ruff')
require("global")
require("plugins")
require("lsp")

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "gd", function() 
  vim.cmd("split")  -- abre un split horizontal
  vim.lsp.buf.definition()
end, { noremap = true, silent = true })

local local_config = vim.fn.getcwd() .. "/.vim/init.lua"
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
