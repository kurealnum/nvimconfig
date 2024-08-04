local palette = require("nightfox.palette.carbonfox")
require("nightfox").setup({
	options = {
		transparent = true,
		styles = { -- Style to be applied to different syntax groups
			comments = "italic", -- Value is any valid attr-list value `:help attr-list`
			conditionals = "NONE",
			constants = "bold",
			functions = "italic",
			keywords = "NONE",
			numbers = "underline",
			operators = "NONE",
			strings = "NONE",
			types = "NONE",
			variables = "NONE",
		},
	},
	palettes = {
		all = {
			sel0 = "#000821",
			sel1 = "#110f11",
		},
	},
	groups = {
		all = {
			WinSeparator = { fg = "#6c7086" }, -- overlay0 in catpuccin mocha
			EndOfBuffer = { fg = "#6c7086" }, -- overlay0 in catpuccin mocha
		},
	},
	specs = {
		all = {
			git = {
				add = palette.palette.green,
				removed = palette.palette.red.bright,
				changed = "#d1d63b", -- custom yellow
				conflict = palette.palette.orange,
				ignored = palette.palette.comment,
			},
			diag = {
				error = palette.palette.red,
				warn = palette.palette.yellow,
				info = palette.palette.magenta,
				hint = palette.palette.comment,
				ok = palette.palette.green,
			},
		},
	},
})

vim.cmd("colorscheme carbonfox")
