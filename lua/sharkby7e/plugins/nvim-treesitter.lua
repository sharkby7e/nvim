return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  priority = 999,
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      autotag = {
        enable = true,
      },
      endwise = {
        enable = true,
      },
      ensure_installed = { "elixir", "heex", "eex", "ruby" },
      highlight = {
        enable = true,
      },
    }
  end
}
