local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require("telescope").setup {
  defaults = {
    mappings = {
      n = { -- Modo normal
        ["s"] = actions.select_horizontal,
        ["E"] = actions.select_vertical,
      }
    },
    initial_mode = "normal",
    -- Incluir archivos ocultos y respetar gitignore opcionalmente
    file_ignore_patterns = {},   -- si quieres ignorar patrones, agrégalo aquí
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',       -- 🔹 esto incluye archivos ocultos
      '--glob', '!.git/*'  -- opcional: ignora la carpeta .git
    },
  },
  extensions = {
    file_browser = {
      hidden = true,      -- 🔹 archivos ocultos en file_browser
      respect_gitignore = false, -- mostrar todos los archivos, incluso ignorados
    },
  },
}

require("telescope").load_extension "file_browser"

-- Keymaps
vim.keymap.set("n", "<space>f", "<cmd>Telescope file_browser<CR>")
vim.keymap.set("n", "ff", "<cmd>Telescope find_files hidden=true<CR>")
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

  vim.api.nvim_buf_set_lines(prompt_bufnr, 0, -1, false, lines)
end

-- LSP definitions
vim.keymap.set("n", "gd", function() 
  builtin.lsp_definitions({jump_type="split"})
end, { noremap = true, silent = true })
