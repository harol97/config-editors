vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("n", "<space>h", ":TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<space>j", ":TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<space>k", ":TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<space>l", ":TmuxNavigateRight<CR>", { silent = true })
