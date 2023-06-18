return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    require("bufferline").setup({
      options = {
        offsets = {
          {
            filetype = "neo-tree",
            text = "N30-7Ree",
            text_align = "center",
            separator = true
          }
        }
      }
    })
  end,
}
