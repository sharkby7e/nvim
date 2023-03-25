return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  priority = 999,
  config = function()
    require'nvim-treesitter.configs'.setup {}
  end
}
