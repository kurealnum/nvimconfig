local ls = require("luasnip")
-- some shorthands...
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.conditions")
local conds_expand = require("luasnip.extras.conditions.expand")

-- Pretty much only for markdown
vim.keymap.set({ "i", "s" }, "<Tab>", function()
	return ls.expand_or_jumpable() and "<Plug>luasnip-expand-or-jump" or "<Tab>"
end, { expr = true })

ls.add_snippets(nil, {
	markdown = {
		s(
			"ph",
			{ t("\\["), i(1), t("\\]"), i(0) },
			{ description = "Commonly typed sequence of characters when referring to phonetics" }
		),

		-- this is so scuffed -- improvement when it isn't 1 am
		s("h1", { t({ "# " }), i(1), t({ "", "", "" }), i(0) }),
		s("h2", { t({ "## " }), i(1), t({ "", "", "" }), i(0) }),
		s("h3", { t({ "### " }), i(1), t({ "", "", "" }), i(0) }),
		s("h4", { t({ "#### " }), i(1), t({ "", "", "" }), i(0) }),
		s("h5", { t({ "##### " }), i(1), t({ "", "", "" }), i(0) }),
		s("h6", { t({ "###### " }), i(1), t({ "", "", "" }), i(0) }),
	},
	typescriptreact = {
		s("in", { t("{t('"), i(0), t("')}") }, { description = "Internationalization shortcut" }),
	},
	tex = {
		s(
			"basetext",
			fmt(
				[[ 
                \documentclass{{article}}
                \usepackage{{graphicx}}
                \usepackage{{parskip}}
                \usepackage{{amsmath}}

                \begin{{document}}

                \end{{document}}
            ]],
				{}
			)
		),
	},
})
