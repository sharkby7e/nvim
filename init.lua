require('sharkby7e.base')
require('sharkby7e.keymap')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup('sharkby7e.plugins')

-- lsp config
require('sharkby7e.lsp')

-- lazygit toggle-term
local Terminal = require('toggleterm.terminal').Terminal
local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true })
function lazygit_toggle()
  lazygit:toggle()
end

-- weird commentstring thing needed
require('ts_context_commentstring').setup {
  enable_autocmd = false,
}

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua lazygit_toggle()<CR>", { noremap = true, silent = true })

print('ur doing great')
