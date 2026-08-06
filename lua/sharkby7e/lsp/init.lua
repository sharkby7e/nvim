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

-- not installed via mason: mason's bin dir is first on $PATH, and its
-- ruby-lsp binstub has a hardcoded shebang for whatever Ruby was
-- global/default at mason-install time. `bundle exec ruby-lsp` finds
-- that first via a plain PATH search (bundler only special-cases the
-- literal `ruby` command), shadowing the project's own bundled gem and
-- ignoring the Gemfile's pinned Ruby version. Instead, each project
-- needs `gem "ruby-lsp", group: :development, require: false` in its
-- Gemfile so `bundle exec ruby-lsp` resolves to the project's own copy.
vim.lsp.config('ruby_lsp', {
  cmd = { 'bundle', 'exec', 'ruby-lsp' }
})
vim.lsp.enable('ruby_lsp')
