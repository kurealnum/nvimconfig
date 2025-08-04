-- Is Mason really "part" of LSP stuff? Eh. But it makes sense to me.
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local servers = {
	"ts_ls",
	"pyright",
	"eslint",
	"lua_ls",
}

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
		border = "rounded",
	},
})

mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_enable = true,
})
