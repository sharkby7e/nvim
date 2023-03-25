return {
  "klen/nvim-test",
  dependencies = {'nvim-treesitter/nvim-treesitter'},
  config = function()
    require("nvim-test").setup({})
  end,
}
