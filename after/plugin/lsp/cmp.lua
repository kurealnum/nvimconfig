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

cmp.setup.buffer({
	sources = { { name = "crates" } },
})
