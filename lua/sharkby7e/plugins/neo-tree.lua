return {
  "nvim-neo-tree/neo-tree.nvim",
  cmd = "Neotree",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require("neo-tree").setup({
      close_if_last_window = true,
      window = {
        position = "left", 
        width = 25
      }
    })
  end,
  vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle reveal<CR>', {}),
  vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>Neotree focus<CR>', {}),
}

