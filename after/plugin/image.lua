local image = require("image")
image.setup({
	integrations = {
		markdown = {
			only_render_image_at_cursor = true,
			floating_windows = false,
			resolve_image_path = function(document_path, image_path, fallback)
				local working_dir = vim.fn.getcwd()
				if working_dir:find("/media/1TB/DualBootFiles/Obsidian Notes") then
					return working_dir .. "/Images/" .. image_path
				end
				return fallback(document_path, image_path)
			end,
		},
	},
})
