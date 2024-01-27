require("kureal.remap")
require("kureal.set")

vim.wo.relativenumber = true

vim.cmd 'colorscheme catppuccin-mocha'
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#b4befe"} )

vim.cmd 'command Q qa!'

vim.g.python3_host_prog = "/usr/bin/python3"

