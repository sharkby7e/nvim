return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  priority = 999,
  build = ":TSUpdate",
  cmd = { "TSUpdateSync" },
  config = function()
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "elixir", "heex", "eex", "ruby" },
      autotag = {
        enable = true,
        filetypes = { "html", "xml", "eruby", "embedded_template" },
      },
      endwise = {
        enable = true,
      },
      highlight = {
        enable = true,
      },
      rainbow = {
        enable = true,
      }
    }
  end
}
