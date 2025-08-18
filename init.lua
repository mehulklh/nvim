-- leader key
vim.g.mapleader = "<Space>"
require("config.lazy")


-- lsp setup
vim.lsp.enable({
	"clangd",
	"gopls"
})


vim.diagnostic.config({
	virtual_text = true,
	virtual_lines = true,
	underline= true,
	float = {
		border = "rounded",
		source = true,
	}

})

-- editor setup
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true




vim.cmd[[colorscheme ef-theme]]
