require('nvim-toggler').setup()
vim.keymap.set({ 'n', 'v' }, '<leader>t', require('nvim-toggler').toggle)

