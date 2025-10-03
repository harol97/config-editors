vim.cmd("filetype indent on")

vim.api.nvim_create_autocmd("FileType",{
  pattern = {'python', 'xml', "htmldjango"},
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end
})

vim.api.nvim_create_autocmd("FileType",{
  pattern = {'javascript', 'typescript', "java", "typescriptreact", "javascriptreact", "css", "scss", "html"},
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end
})
