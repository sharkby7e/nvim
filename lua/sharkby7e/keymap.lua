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

map("n", "h", "i", opts)

map("n", "k", "nzzzv", opts)
map("n", "j", "Nzzzv", opts)

map("n", "n", "j", opts)
map("n", "i", "l", opts)

map("i", "<c-<>", "<%= %><ESC>T=a", opts)
map("i", "<c->>", "<% %><ESC>bi", opts)

map("n", "<S-h>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-l>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>bb", ":bd<CR>", opts)

map("n", "<leader>r", "<CMD>lua require('neotest').run.run()<CR>", opts)
map("n", "<C-r>", "<CMD>lua require('neotest').run.run_last()<CR>", opts)
map("n", "<leader>rf", "<CMD>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", opts)
map("n", "<leader>ts", "<CMD>lua require('neotest').summary.toggle()<CR>", opts)

map("", "<leader>h", ":noh<CR>", opts)
map("", "<leader>w", ":w<CR>", opts)
map("", "<leader>q", ":q<CR>", opts)
