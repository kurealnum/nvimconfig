local tt = require("toggleterm")

-- name fields aren't working for some reason
-- not using this ATM since I started using i3
-- vim.cmd("1ToggleTerm name=termproject")
-- vim.cmd("2ToggleTerm name=termgit")

tt.setup({
	shade_terminals = true,
})
