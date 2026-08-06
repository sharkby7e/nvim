return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    -- nvim-treesitter's `main` branch dropped the old parsers/configs
    -- modules that telescope's bundled previewer relies on for
    -- treesitter highlighting; disable it so previews use regex
    -- `syntax` highlighting instead of erroring.
    require('telescope').setup({
      defaults = {
        preview = {
          treesitter = false,
        },
      },
    })

    vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
    vim.api.nvim_set_keymap('n', '<leader>fw', '<cmd>Telescope live_grep<cr>', {})
  end,
}
