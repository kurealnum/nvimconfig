local tt = require("toggleterm")

tt.setup({
	shade_terminals = true,
})

vim.keymap.set("n", "<leader>te", "<cmd>ToggleTerm<cr>")
