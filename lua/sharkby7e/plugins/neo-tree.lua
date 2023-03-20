return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle reveal<CR>', {}),
  vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>Neotree focus<CR>', {}),
}

