return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.inlay_hint.enable(true)

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
					},
					diagnostics = {
						globals = {
							"vim", -- configuring lua_la to register vim as a known global
							"require",
						},
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
		})

		vim.lsp.config("rust_analyzer", {
			settings = {
				["rust_analyzer"] = {
					inlayHints = {
						bindingModeHints = {
							enable = true,
						},
						closingBraceHints = {
							enable = true,
						},
						implicitDrops = {
							enable = true,
						},
						reborrowHints = {
							enable = true,
						},
						typeHints = {
							enable = true,
						},
					},
				},
			},
		})
	end,
}
