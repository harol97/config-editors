vim.cmd("syntax on")
vim.diagnostic.config({
  virtual_lines = true
})
vim.o.updatetime = 200
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.showcmd = true
vim.cmd("filetype plugin on")
vim.keymap.set("n", "*", "*N") -- search word and keep current line

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })

-- now it is possible to paste many times over selected text
vim.keymap.set('x', 'p', function()
  return 'pgv"' .. vim.v.register .. 'y`>'
end, { expr = true })
-- now it is possible to paste many times over selected text

-- load project configuration
local local_config = vim.fn.getcwd() .. "/.vim/init.lua"
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
