-- mason and mason lsp-config
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tailwindcss" }
})

vim.diagnostic.config {
  virtual_text = false,
  signs = true,
  underline = false,
}

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local bufnr = args.buf
    local nmap = function(keys, func, desc)
      if desc then
        desc = "LSP: " .. desc
      end
      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end
    nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
    nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
    nmap('<leader>d', vim.diagnostic.open_float, 'Open float diagnostics')
    nmap("K", vim.lsp.buf.hover)

    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
      vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
  end,
})

-- mason-lspconfig auto-installs (ensure_installed above) and calls
-- vim.lsp.enable() for each; this just supplies lua_ls's settings.
vim.lsp.config('lua_ls', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})
