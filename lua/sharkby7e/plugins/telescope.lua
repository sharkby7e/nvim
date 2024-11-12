return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {}),
  vim.api.nvim_set_keymap('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', {}),
}
