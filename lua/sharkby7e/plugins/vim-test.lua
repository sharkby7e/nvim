return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux"
  },
  -- vim.keymap.set('n', '<leader>r', ':TestNearest<CR>'),
  -- vim.keymap.set('n', '<leader>rf', ':TestFile<CR>'),
  vim.keymap.set('n', '<c-r>', ':TestLast<CR>'),
  vim.cmd("let test#strategy = 'vimux'")
}
