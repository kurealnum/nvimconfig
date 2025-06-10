-- colorscheme
vim.cmd("colorscheme gruvbox")
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
		vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none", fg = "none" })

		-- for telescope
		vim.api.nvim_set_hl(0, "TelescopePreviewLine", { bg = "#32302f", fg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "#32302f", fg = "none" })

		-- stupid barbar
		vim.api.nvim_set_hl(0, "BufferOffset", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferScrollArrow", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferTabpageFill", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferTabpages", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferTabpagesSep", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultTabpages", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultTabpageFill", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultTabpagesSep", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultInactive", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferInactive", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultCurrent", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "BufferDefaultVisible", { bg = "none", fg = "none" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#777777" })
	end,
})

-- enable global transparency
vim.cmd("TransparentEnable")
