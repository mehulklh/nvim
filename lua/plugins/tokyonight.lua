return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,

	opts = {
		styles = {
			comments = { italic = false },
			keywords = { italic = false },
		},
		style = "night",
		on_colors = function(colors)
			colors.bg_dark = "#000000"
		end,
	},
}
