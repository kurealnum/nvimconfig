require("vercel").setup({
	theme = "dark", -- String: Sets the theme to light or dark (Default: light)
	transparent = true, -- Boolean: Sets the background to transparent (Default: false)
	italics = {
		comments = true, -- Boolean: Italicizes comments (Default: true)
		keywords = true, -- Boolean: Italicizes keywords (Default: true)
		functions = true, -- Boolean: Italicizes functions (Default: true)
		strings = true, -- Boolean: Italicizes strings (Default: true)
		variables = true, -- Boolean: Italicizes variables (Default: true)
		bufferline = false, -- Boolean: Italicizes bufferline (Default: false)
	},
	overrides = {}, -- A dictionary of group
})
