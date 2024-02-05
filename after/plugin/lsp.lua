local lsp = require('lsp-zero')

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {
					'vim',
					'require'
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
	disable = { "missing-fields", "incomplete-signature-doc" }
}

lsp.preset('recommended')

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

require('mason').setup({})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {"tsserver", "pyright", "eslint", "lua_ls"},
	handlers = {
		lsp.default_setup,
	},
})

lsp.setup()

