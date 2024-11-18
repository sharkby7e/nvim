local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<S-e>", ":m-2<CR>==", opts)
map("n", "<S-n>", ":m+1<CR>==", opts)
map("n", "<CR>", "o<ESC>", opts)
map("n", "<S-u>", "<C-r>", opts)

map("n", "<leader>v", "<CMD>vsplit<CR>", opts)
map("n", "<leader>s", "<CMD>split<CR>", opts)
map("n", "<C-up>", "<c-w><up>", opts)
map("n", "<C-down>", "<c-w><down>", opts)
map("n", "<C-left>", "<c-w><left>", opts)
map("n", "<C-right>", "<c-w><right>", opts)

map("n", "h", "j", opts)
map("n", "j", "h", opts)

map("n", "===", "gg=G", opts)

map("n", "n", "nzzzv", opts)
map("n", "m", "Nzzzv", opts)

map("n", "<leader>rs", "o<% %><ESC>bbea ", opts)
map("n", "<leader>rt", "o<%= %><ESC>T=i ", opts)

map("n", "<S-h>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-l>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>bb", ":bd<CR>", opts)

map("", "<leader>h", ":noh<CR>", opts)
map("", "<leader>w", ":w<CR>", opts)
map("", "<leader>q", ":q<CR>", opts)
