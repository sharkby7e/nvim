return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[colorscheme nordfox]])
		end,
	},
	{
		"windwp/nvim-autopairs", 
		config = function() require("nvim-autopairs").setup {} end
	},
	"kylechui/nvim-surround",
	"folke/neodev.nvim",
	"folke/which-key.nvim",
}
