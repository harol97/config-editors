require("telescope").setup {
  defaults = {
    initial_mode = "normal"
  },
  extensions = {
    file_browser = {
      -- disables netrw and use telescope-file-browser in its place
    },
  },
}
-- To get telescope-file-browser loaded and working with telescope,
-- you need to call load_extension, somewhere after setup function:
require("telescope").load_extension "file_browser"

vim.keymap.set("n", "<space>f", "<cmd>Telescope file_browser<CR>")
vim.keymap.set("n", "ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "fg", "<cmd>Telescope live_grep<CR>")
vim.keymap.set("n", "fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "fh", "<cmd>Telescope help_tags<CR>")
