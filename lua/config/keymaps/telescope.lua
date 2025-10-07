local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

vim.keymap.set("n", "<leader>fws", builtin.lsp_workspace_symbols, { desc = "Telescope lsp workspace symbols" })
vim.keymap.set("n", "<leader>fds", builtin.lsp_document_symbols, { desc = "Telescope lsp doc symbols" })
