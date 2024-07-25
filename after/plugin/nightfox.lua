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
})

vim.cmd("colorscheme carbonfox")
