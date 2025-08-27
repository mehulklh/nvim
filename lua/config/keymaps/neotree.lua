local nt_command = require("neo-tree.command")

vim.keymap.set("n", "<leader>-b", function()
	local current_file = vim.fn.expand("%:p")

	if current_file == "" then
		current_file = vim.fn.getcwd() -- if the file is unsaved, then get the current working directory
	else
		local f = io.open(current_file, "r")
		if f then -- tries to open the file. if it is not able to be accessed (due to it not being created or insufficient permissions, then the io.open call returns nil, in which case we close the file descriptor
			f.close()
		else
			current_file = vim.fn.getcwd()
		end
	end
	nt_command.execute({
		action = "focus",
		source = "filesystem",
		position = "left",
		reveal_file = current_file,
		reveal_force_cwd = true,
	})
end, { desc = "Open Neotree at current file or working directory" })

vim.keymap.set("n", "<leader>-B", function()
	nt_command.execute({
		action = "focus",
		source = "buffers",
		position = "float",
	})
end)

vim.keymap.set("n", "<leader>-", "<Cmd>Neotree toggle<CR>", { desc = "Neotree toggle" })
