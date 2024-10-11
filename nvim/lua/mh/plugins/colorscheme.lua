-- return {

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

-- 	"catppuccin/nvim",
-- 	lazy = false,
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- require("catppuccin").setup({
--             flavour = "mocha", -- Choose your preferred flavour: latte, frappe, macchiato, mocha
--             background = {
--                 light = "latte",
--                 dark = "mocha",
--             },
--     })
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

-- plugins.lua or your equivalent plugin configuration file
return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha", -- Set the desired flavor
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                integrations = {
                    treesitter = true,
                    lsp_trouble = true,
                    cmp = true,
                    telescope = true,
                    nvimtree = true,
                    bufferline = true,
                    which_key = true,
                    -- Add other integrations as needed
                },
                -- Additional customization options
                transparent_background = false, -- Set to true if you want a transparent background
                show_end_of_buffer = false,      -- Hide the '~' characters after the end of buffer
                term_colors = true,             -- Change terminal colors based on the selected theme
                dim_inactive = {
                    enabled = false,
                    shade = "dark",
                    percentage = 0.15,
                },
                no_italic = false,                -- Disable italic style
                no_bold = false,                  -- Disable bold style
                no_underline = false,             -- Disable underline
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = { "italic" },
                    functions = { "bold" },
                    keywords = { "italic" },
                    strings = { "italic" },
                    variables = {},
                    numbers = {},
                    booleans = {},
                    properties = {},
                    types = { "bold" },
                    operators = {},
                },
                color_overrides = {},
                custom_highlights = {},
            })

            -- Apply the colorscheme
            vim.cmd.colorscheme("catppuccin")
        end,
    },
    -- ... other plugins
}

