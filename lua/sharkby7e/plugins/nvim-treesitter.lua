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
      ensure_installed = { "elixir", "heex", "eex", "ruby" },
      autotag = {
        enable = true,
        filetypes = { "html", "xml", "typescriptreact",
          "eruby", "heex", "elixir", "embedded_template" },
      },
      highlight = {
        enable = true,
      },
    }
  end
}
