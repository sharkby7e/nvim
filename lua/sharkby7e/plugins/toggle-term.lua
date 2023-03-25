return {
  "akinsho/toggleterm.nvim",
  tag = '*',
  config = function()
    require("toggleterm").setup({
      autochdir = true,
      direction = "float",
      open_mapping = [[<c-'>]]
    })
  end
}
