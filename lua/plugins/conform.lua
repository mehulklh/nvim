return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			cpp = { "clang_format", lsp_format = "fallback" },
			lua = { "stylua", lsp_format = "fallback" },
			go = { "gofmt", lsp_format = "fallback" },
		},
		format_on_save = {
			timeout_ms = 100,
			lsp_format = "fallback",
		},
		formatters = {
			clang_format = {
				prepend_args = { "--style=file" },
			},
		},
	},
}
