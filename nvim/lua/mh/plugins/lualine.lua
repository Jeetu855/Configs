return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto", -- Automatically uses the colorscheme's theme
				icons_enabled = true, -- Enable icons
			},
		})
	end,
}
