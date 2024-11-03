-- enable mason and popup transparency (not sure why I have to do this)
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "Pmenu", { bg = "none", fg = "none" })
	end,
})
-- colorscheme
vim.cmd("colorscheme rose-pine-moon")
-- enable global transparency
vim.cmd("TransparentEnable")
