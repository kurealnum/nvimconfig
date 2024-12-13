local tt = require("toggleterm")

local function disableSpell()
	-- disable spell checking for terminals
	vim.opt.spell = false
end

tt.setup({
	shade_terminals = true,
	on_open = disableSpell(),
	on_create = disableSpell(),
})

vim.keymap.set("n", "<leader>te", "<cmd>ToggleTerm<cr>")
