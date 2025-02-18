local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("i", "kj", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- Switch buffer
-- keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
-- keymap("n", "<S-l>", ":bnext<CR>", default_opts)

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)


-- map <F5> <Esc>:w<CR>:!cargo run --bin %:t<CR>
vim.keymap.set("n", "<leader>r", "<Esc>:w<CR>:!cargo run --bin %:t:r<CR>", default_opts)
vim.keymap.set("n", "<leader>e", "<Esc>:w<CR>:!cargo run --bin main<CR>", default_opts)
vim.keymap.set("n", "<leader>t", "<Esc>:w<CR>:!cargo run --example %:t:r<CR>", default_opts)
