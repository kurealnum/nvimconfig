local tt = require("toggleterm")

-- name fields aren't working for some reason
vim.cmd("1ToggleTerm name=termproject")
vim.cmd("2ToggleTerm name=termgit")

tt.setup({
	shade_terminals = true,
})
