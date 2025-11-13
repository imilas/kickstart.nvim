-- ~/.config/nvim/lua/keymaps.lua

-- Shortcuts to exit insert and terminal mode with 'jk' or 'kj'
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

-- For terminal mode: map 'jk' and 'kj' to <C-\><C-n> (normal mode)
vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
vim.keymap.set('t', 'kj', [[<C-\><C-n>]])
