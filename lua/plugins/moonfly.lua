return {
	"bluz71/vim-moonfly-colors",
	enabled = false,
	name = "moonfly",
	lazy = false,
	priority = 1000,
	config = function()
		vim.g.moonflyCursorColor = true
		vim.g.moonnflyItalics = false
		vim.g.moonflyWinSeparator = 2
	end,
}
