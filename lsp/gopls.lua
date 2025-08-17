return {
	cmd = {'gopls'},
	root_markers = {"go.mod","go.work",".git"},
	filetypes = {"go","gomod","gowork","gosum"},
	settings = {
		gopls = {
			completeUnimported = true,
			gofumpt = true,
			hints = {
				functionTypeParameters = true,
				parameterNames = true,
			},
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true
		}
	}
}
