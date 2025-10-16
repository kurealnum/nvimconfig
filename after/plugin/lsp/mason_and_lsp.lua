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

require("java").setup({
	jdk = {
		-- hate this shit. no use jdk. very annoying. email me if you have question
		auto_install = false,
	},
	spring_boot_tools = {
		enable = false,
	},
})

-- this doesn't work? ok fuck you then
-- vim.lsp.config("jdtls", {
-- 	settings = {
-- 		java = {
-- 			configuration = { runtimes = { name = "JavaJDK-24", path = "/usr/lib/jvm/java-24-jdk/", default = true } },
-- 		},
-- 	},
-- })
-- vim.lsp.enable({ "jdtls" })

require("lspconfig").jdtls.setup({
	settings = {
		java = {
			configuration = { runtimes = { name = "JavaJDK-24", path = "/usr/lib/jvm/java-24-jdk/", default = true } },
		},
	},
})

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {
					"vim",
					"require",
				},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
	disable = { "missing-fields", "incomplete-signature-doc" },
})
vim.lsp.enable({ "lua_ls" })
