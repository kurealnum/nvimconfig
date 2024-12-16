local image = require("image")
image.setup({
	integrations = {
		markdown = {
			only_render_image_at_cursor = true,
			floating_windows = false,
			resolve_image_path = function(document_path, image_path, fallback)
				return "/home/oscar/obsidian-notes/Images/" .. image_path
			end,
		},
	},
})
