return {
  require("mason").setup(),
  require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "tsserver" }
  }),
  require("lspconfig").sumneko_lua.setup {}
}
