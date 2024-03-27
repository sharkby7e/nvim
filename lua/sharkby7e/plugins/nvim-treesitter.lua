return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  dependencies = {
    "windwp/nvim-ts-autotag",
    "tpope/vim-endwise",
    "hiphish/rainbow-delimiters.nvim",
    "nvim-treesitter/nvim-treesitter-context"
  },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "vim", "vimdoc", "lua", "elixir", "heex", "eex", "ruby" },
      autotag = {
        enable = true,
        filetypes = { "astro", "html", "xml", "typescriptreact", "eruby", "heex", "elixir", "embedded_template" },
      },
      highlight = {
        enable = true,
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
