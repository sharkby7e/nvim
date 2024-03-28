-- return {}
return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "olimorris/neotest-rspec",
    "jfpedroza/neotest-elixir"
  },
  config = function()
    require("neotest").setup({
      summary = {
        open = "botright split | resize 15"
      },
      adapters = {
        require("neotest-rspec")({
          rspec_cmd = function()
            return vim.tbl_flatten({
              "bundle",
              "exec",
              "rspec",
            })
          end
        }),
        require("neotest-elixir"),
      },
    })
  end
}
