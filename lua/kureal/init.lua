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

vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		-- Enable treesitter highlighting and disable regex syntax
		pcall(vim.treesitter.start)
		-- Enable treesitter-based indentation
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

function nmd(opts)
	local name = opts.fargs[1]
	local cwd = vim.fn.expand("%:h")
	local filename = cwd .. "/" .. name .. ".md"
	local file = io.open(filename, "w")
	print(cwd)
	if file ~= nil then
		file:write("# " .. name)
		file:close()
	end
	vim.cmd("e", filename)
end

-- create markdown file based off of user input
vim.api.nvim_create_user_command("Nmd", nmd, { nargs = "?" })

vim.opt.spelllang = "en_us"
vim.opt.spell = false
