local keymap = vim.keymap
local builtin = require('telescope.builtin')
keymap.set('n', '<C-p>', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})