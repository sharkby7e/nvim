return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  priority = 999,
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = {"elixir", "heex", "eex", "ruby"},
      highlight = {
        enable = true,
      }
    }
  end
}
