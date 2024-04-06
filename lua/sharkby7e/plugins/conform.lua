return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader><space>",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  -- Everything in opts will be passed to setup()
  opts = {
    -- Define your formatters
    formatters_by_ft = {
      astro = { "prettier" },
      eruby = { "erb_format" },
      javascript = { "prettierd" },
      lua = { "lua_ls" },
      ruby = { "rubyfmt" },
      rust = { "rustfmt" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
    },
    -- Set up format-on-save
    format_on_save = { timeout_ms = 500, lsp_fallback = true },
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
      erb_format = {
        args = { "--stdin", "--print-width", "150" }
      }
    },
  },
  init = function()
    -- If you want the formatexpr, here is the place to set it
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
