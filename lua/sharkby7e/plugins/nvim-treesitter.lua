return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  dependencies = {
    "windwp/nvim-ts-autotag",
    "hiphish/rainbow-delimiters.nvim",
    "nvim-treesitter/nvim-treesitter-context",
    "RRethy/nvim-treesitter-endwise"
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "vim", "vimdoc", "lua", "elixir", "query", "heex", "eex", "ruby" },
      highlight = {
        enable = true,
      },
      endwise = {
        enable = true
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          scope_incremental = '<C-n>',
          node_incremental = '<C-space>',
          node_decremental = '<bs>',
        }
      },
      indent = {
        disable = {
          filetypes = { 'eruby' }
        },
        enable = true
      },
    }
  end
}
