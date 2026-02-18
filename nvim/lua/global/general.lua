vim.cmd("syntax on")
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

-- now it is possible to paste many times over selected text
vim.keymap.set('x', 'p', function()
  return 'pgv"' .. vim.v.register .. 'y`>'
end, { expr = true })
-- now it is possible to paste many times over selected text

-- show end blank line -- before it. nvim hidden end blank line (for example this blank line is used by PEP 8 in python files)
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    if vim.opt_local.endofline:get() then
      vim.opt_local.endofline = false
      vim.opt_local.fixendofline = false
      vim.api.nvim_buf_set_lines(0, -1, -1, false, {""})
    end
  end,
})