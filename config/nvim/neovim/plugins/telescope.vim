lua << EOF
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<C-Down>"] = require('telescope.actions').cycle_history_next,
        ["<C-Up>"] = require('telescope.actions').cycle_history_prev,
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}
EOF
