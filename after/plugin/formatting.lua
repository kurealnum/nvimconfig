require("formatter").setup({
	logging = true,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		java = {
			require("formatter.filetypes.java").google_java_format,
		},
		css = {
			require("formatter.filetypes.css").prettier,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
		json = {
			require("formatter.filetypes.json").prettier,
		},
		markdown = {
			require("formatter.filetypes.markdown").prettier,
		},
		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},
		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},
		html = {
			require("formatter.filetypes.html").prettier,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
		htmldjango = {
			function()
				return {
					exe = "djlint",
					args = {
						"--reformat",
						"--format-css",
						"--format-js",
						"--ignore=T002",
						"-",
					},
					stdin = true,
				}
			end,
		},
	},
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
