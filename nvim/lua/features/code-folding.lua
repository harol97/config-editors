vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.keymap.set('n', 'zr', require('ufo').openAllFolds)
vim.keymap.set('n', 'zm', require('ufo').closeAllFolds)


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
}
-- API nuevo de Neovim 0.11+: aplica a todos los servers sin require('lspconfig')
vim.lsp.config('*', {
    capabilities = capabilities
})
require('ufo').setup()
--
