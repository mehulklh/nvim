vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Normal mode" })

vim.keymap.set("n", "<leader>t", function()
	vim.cmd.vsplit()
	vim.cmd.wincmd("l")
	vim.cmd.terminal()
end, { desc = "Right split terminal" })
