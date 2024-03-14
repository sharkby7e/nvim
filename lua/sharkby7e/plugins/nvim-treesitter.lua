return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  priority = 999,
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  dependencies = {
    "windwp/nvim-ts-autotag",
    "tpope/vim-endwise",
    "hiphish/rainbow-delimiters.nvim",
  },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "vim", "vimdoc", "lua", "elixir", "heex", "eex", "ruby" },
      autotag = {
        enable = true,
        filetypes = { "html", "xml", "typescriptreact",
          "eruby", "heex", "elixir", "embedded_template" },
      },
      highlight = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<leader>is',
          scope_incremental = '<leader>n',
          node_incremental = '<leader>n',
          node_decremental = '<leader>m',
        }
      },
      indent = {
        enable = true
      },
    }
  end
}
