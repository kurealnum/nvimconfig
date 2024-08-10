require("kureal.remap")
require("kureal.set")

vim.wo.relativenumber = true

vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#b4befe" })

vim.cmd("command Q qa!")

-- enable mason and popup transparency
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- enable lualine transparency
require("transparency").clear_prefix("lualine")

vim.g.python3_host_prog = "/usr/bin/python3"
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- colorscheme
vim.cmd("colorscheme carbonfox")
