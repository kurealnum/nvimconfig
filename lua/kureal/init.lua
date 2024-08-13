require("kureal.remap")
require("kureal.set")

vim.wo.relativenumber = true

vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#777777" })

vim.cmd("command Q qa!")

vim.g.python3_host_prog = "/usr/bin/python3"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- round border
vim.diagnostic.config({
	float = { border = "rounded" },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "txt", "env" },
	callback = function(opts)
		local cmp = require("cmp")
		cmp.setup.buffer({ enabled = false })
	end,
})
