vim.diagnostic.config({
	virtual_text = true,
	virtual_lines = true,
	underline = true,
	float = {
		border = "rounded",
		source = true,
	},
})

--colorscheme
vim.cmd([[colorscheme kanagawa-dragon]])
-- editor setup
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.shell = "/usr/bin/fish"
vim.opt.smoothscroll = true
vim.opt.swapfile = false
