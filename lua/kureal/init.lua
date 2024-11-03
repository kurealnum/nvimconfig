require("kureal.remap")
require("kureal.set")

vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#777777" })

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
