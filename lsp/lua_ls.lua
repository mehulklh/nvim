return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	settings = {
		Lua = {
			hint = { enable = true },
			telemetry = { enable = false },
			diagnostics = { globals = { "vim" } },
			workspace = {
				library = vim.api.nvim_get_runtime_file("lua", true), -- enables completion for neovim lua API
			}
		}
	}
}



