return {
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
    vim.cmd [[colorscheme kanagawa-wave]]
  end
}

-- return {
--   "EdenEast/nightfox.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme nordfox]])
--   end,
-- }
