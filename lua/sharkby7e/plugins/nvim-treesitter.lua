-- tree-sitter parser names (for install)
local parsers = { "vim", "vimdoc", "lua", "elixir", "query", "heex", "eex", "ruby", "html", "embedded_template" }
-- vim filetype names (for the FileType autocmd below); eruby's parser is "embedded_template"
local filetypes = { "vim", "vimdoc", "lua", "elixir", "query", "heex", "eex", "ruby", "html", "eruby" }
local indent_disabled_filetypes = { eruby = true }

return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  dependencies = {
    "windwp/nvim-ts-autotag",
    "hiphish/rainbow-delimiters.nvim",
    "nvim-treesitter/nvim-treesitter-context",
    "RRethy/nvim-treesitter-endwise"
  },
  config = function()
    require('nvim-treesitter').install(parsers)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function(args)
        vim.treesitter.start()
        if not indent_disabled_filetypes[args.match] then
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })

    require('nvim-ts-autotag').setup({})
    require('treesitter-context').setup({})
  end
}
