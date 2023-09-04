return {
  "nvim-neotest/neotest",
  dependencies = {
    "olimorris/neotest-rspec",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "jfpedroza/neotest-elixir"
  },
  config = function()
    require("neotest").setup({
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
