return {
	cmd = {"lua-language-server"},
	filetypes = {"lua"},
	settings = {
		Lua = {
			hint = {enable = true},
			telemetry = {enable = false},
			diagnostics = {globals = {"vim"}},
		}
	}
}
