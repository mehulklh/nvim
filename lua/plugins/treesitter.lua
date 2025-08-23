return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	opts = {
		highlight = {
			enable = true,
		},
		ensure_installed = { "c", "cpp", "go" },
		auto_install = true,
	},
}
