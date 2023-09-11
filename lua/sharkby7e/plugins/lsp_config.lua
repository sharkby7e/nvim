return {
  require("mason").setup(),
  require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver" }
  }),
  require("lspconfig").lua_ls.setup {},
  require("lspconfig").tsserver.setup {}
}
