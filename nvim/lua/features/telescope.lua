local actions = require('telescope.actions')
require("telescope").setup {
  defaults = {
    mappings = {
      n = { -- Modo normal
        ["s"] = actions.select_horizontal,
        ["E"] = actions.select_vertical,
      }
    },
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

-- Redefinir show_help
actions.show_help = function(prompt_bufnr)
  local mappings = {
    n = { s = "split horizontal", E = "split vertical" },
  }

  local lines = { "=== Telescope Custom Help ===" }
  for mode, map in pairs(mappings) do
    table.insert(lines, "Mode: " .. mode)
    for key, desc in pairs(map) do
      table.insert(lines, string.format("  %s → %s", key, desc))
    end
  end

  -- Mostrar en la ventana de Telescope
  vim.api.nvim_buf_set_lines(prompt_bufnr, 0, -1, false, lines)
end


local builtin = require('telescope.builtin')
vim.keymap.set("n", "gd", function() 
  -- vim.cmd("split")  -- abre un split horizontal
  builtin.lsp_definitions({jump_type="split"})
end, { noremap = true, silent = true })
