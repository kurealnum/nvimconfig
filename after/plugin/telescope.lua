local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- open symbols
vim.keymap.set("n", "<leader>pl", builtin.lsp_document_symbols, {})

-- very hacky and shitty fix until telescope gets their nvim v0.12 and treesitter shit figured out
require("telescope").setup({
	defaults = {
		preview = {
			treesitter = false,
		},
	},
})
