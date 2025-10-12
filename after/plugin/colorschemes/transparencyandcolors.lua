-- colorscheme
vim.cmd("colorscheme gruvbox")

-- based off of the colors listed here: https://github.com/morhetz/gruvbox
local gruvbox_orange = "#d65d0e"
local gruvbox_aqua = "#689d6a"
local gruvbox_purple = "#b16286"
local gruvbox_blue = "#076678"
local gruvbox_yellow = "#d79921"
local gruvbox_green = "#98971a"
local gruvbox_red = "#cc241d"

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

		-- for markdown
		vim.api.nvim_set_hl(0, "MarkviewPalette1", { fg = gruvbox_orange })
		vim.api.nvim_set_hl(0, "MarkviewPalette2", { fg = gruvbox_aqua })
		vim.api.nvim_set_hl(0, "MarkviewPalette3", { fg = gruvbox_purple })
		vim.api.nvim_set_hl(0, "MarkviewPalette4", { fg = gruvbox_blue })
		vim.api.nvim_set_hl(0, "MarkviewPalette5", { fg = gruvbox_yellow })
		vim.api.nvim_set_hl(0, "MarkviewPalette6", { fg = gruvbox_green })

		-- fuck insert and visual mode with markview fml fml fml
		vim.api.nvim_set_hl(0, "@markup.heading", { fg = gruvbox_green })
	end,
})

-- enable global transparency
vim.cmd("TransparentEnable")
