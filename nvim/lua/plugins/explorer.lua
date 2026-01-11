vim.keymap.set("n", "<space>b", "<Cmd>:Neotree<CR>")
require("neo-tree").setup({
  event_handlers = {
    {
      event = "file_open_requested",
      handler = function()
        require("neo-tree.command").execute({action = "close"})
      end
    }
  },
  close_if_last_window = true,
  window = {
    position = "right",
    width = 70,
    mappings = {
      ["S"] = "split_with_window_picker",
      ["s"] = "vsplit_with_window_picker",
      ["Y"] = function(state)
          local node = state.tree:get_node()
          if node and node.name then
            vim.fn.setreg('+', node.name)   -- copia solo el nombre al portapapeles
            print("Nombre copiado: " .. node.name)
          end
        end,
    }
  },
  filesystem = {
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true
    },
    window_picker = {
      enabled = true
    }
  }
})


