local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<S-e>", ":m-2<CR>==", opts)
map("n", "<S-n>", ":m+1<CR>==", opts)
map("n", "<CR>", "o<ESC>", opts)

map("n", "<S-u>", "<C-r>", opts)
map("n", "m", "Nzzzv", opts)
map("n", "n", "nzzzv", opts)
map("n", "j", "k", opts)
map("n", "k", "j", opts)
map("n", "h", "l", opts)
map("n", "l", "h", opts)

map("n", "<S-l>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>c", ":BufferLinePickClose<CR>", opts)
map("n", "<leader>x", ":BufferLinePick<CR>", opts)

map("", "<leader>h", ":noh<CR>", opts)
map("", "<leader>=", "gg=G", opts)
map("", "<leader>w", ":w<CR>", opts)
map("", "<leader>q", ":q<CR>", opts)


--lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
--lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

--lvim.keys.normal_mode["<leader>r"] = ":TestNearest<CR>"
--lvim.keys.normal_mode["<C-r>"] = ":TestLast<CR>"

--lvim.builtin.terminal.open_mapping = "<c-'>"













