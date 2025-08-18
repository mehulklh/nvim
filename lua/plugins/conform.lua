return {
  'stevearc/conform.nvim',
  opts = {
	  formatters_by_ft = {
		  cpp = {"clang_format",lsp_format = "fallback"}
	  },
	  format_on_save = {
		  timeout_ms = 500,
		  lsp_format = "fallback"
	  },
	  formatters = {
		  clang_format = {
			  prepend_args = {'--style=file'}
		  },
	  }
  },
}
