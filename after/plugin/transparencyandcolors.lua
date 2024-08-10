local transparency = require("transparent")
-- colorscheme
vim.cmd("colorscheme earlysummer_lighter")
-- enable lualine transparency
transparency.clear_prefix("lualine")
-- enable global transparency
vim.cmd("TransparentEnable")
-- enable mason and popup transparency
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
