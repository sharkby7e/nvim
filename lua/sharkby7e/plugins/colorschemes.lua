return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = "none"
              }
            }
          }
        }
      })
    end
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function() end,
  },
  {
    "rmehri01/onenord.nvim",
    config = function()
      require("onenord").setup()
    end
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}
