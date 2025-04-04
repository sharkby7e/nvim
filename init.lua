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

-- allow remapping of tmux vim navigator
vim.g['tmux_navigator_no_mappings'] = 1

-- lsp config
require('sharkby7e.lsp')

-- lazygit toggle-term
local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
function Lazygit_toggle()
  lazygit:toggle()
end

-- weird commentstring thing needed
require('ts_context_commentstring').setup {
  enable_autocmd = false,
}

-- lazygit
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua Lazygit_toggle()<CR>", { noremap = true, silent = true })

-- weird formatting bug cuz ruby interpreter doesn't care about space
vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')

-- colorschemes
-- vim.cmd([[colorscheme nordfox]])
-- vim.cmd [[colorscheme onenord]]
-- vim.cmd [[colorscheme kanagawa-wave]]
vim.cmd [[colorscheme catppuccin-macchiato]]
-- vim.cmd([[colorscheme duskfox]])
-- vim.cmd([[colorscheme everforest]])

print('ur doing great')
