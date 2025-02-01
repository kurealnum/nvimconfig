local nnn = require("nnn")
local builtin = require("nnn").builtin

nnn.setup({
	picker = {
		session = "local",
		fullscreen = false,
	},
	mappings = {
		{ "l", builtin.open_in_preview },
	},
})
