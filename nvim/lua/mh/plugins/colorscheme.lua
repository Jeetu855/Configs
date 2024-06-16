return {

	--"folke/tokyonight.nvim",
	--priority = 1000,
	--config = function()
	--		require("tokyonight").setup({
	--			transparent = true,
	--		styles = {
	--			sidebars = "transparent",
	--			floats = "transparent",
	--	},
	--	})

	--	vim.cmd("colorscheme tokyonight")
	--end,

	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin")
	end,
}
