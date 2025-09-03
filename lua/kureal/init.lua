require("kureal.remap")
require("kureal.set")

-- round border
vim.diagnostic.config({
	float = { border = "rounded" },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "markdown", "txt", "env" },
	callback = function(opts)
		local cmp = require("cmp")
		cmp.setup.buffer({ enabled = false })
		-- have to "re-enable" spellchecking for these files
		vim.opt.spelllang = "en_us"
		vim.opt.spell = true

		vim.opt.linebreak = true
	end,
})

vim.opt.spelllang = "en_us"
vim.opt.spell = false
