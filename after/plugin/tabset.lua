require("tabset").setup({
	defaults = {
		tabwidth = 4,
		expandtab = true,
	},
	languages = {
		{
			filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact", "c" },
			config = {
				tabwidth = 2,
			},
		},
	},
})
