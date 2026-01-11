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


