local lspconfig = require("lspconfig")

-- lsp config
local lsp_attach = function(client, bufnr)
	local opts = { buffer = bufnr }
end

lspconfig.lua_ls.setup({
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

local servers = {
	"ts_ls",
	"pyright",
	"eslint",
	"lua_ls",
}

-- cmp config
local cmp = require("cmp")
local types = require("cmp.types")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
	preselect = "item",
	mapping = cmp.mapping.preset.insert({
		["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
		["<C-y>"] = cmp.mapping.confirm({ select = true }),
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = cmp.config.sources({
		{ name = "luasnip" },
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "buffer", keyword_length = 4 },
		{ name = "path" },
	}),
})

-- mason config
require("mason").setup({})
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = servers,
	automatic_enable = true,
})
