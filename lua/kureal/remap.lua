vim.g.mapleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- terminal mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-N>")

-- for moving around windows
vim.keymap.set("n", "<leader>h", "<C-W><C-H>")
vim.keymap.set("n", "<leader>j", "<C-W><C-J>")
vim.keymap.set("n", "<leader>k", "<C-W><C-K>")
vim.keymap.set("n", "<leader>l", "<C-W><C-L>")

-- git diff
vim.keymap.set("n", "<leader>oo", "<cmd>DiffviewOpen<cr>")
vim.keymap.set("n", "<leader>oc", "<cmd>DiffviewClose<cr>")

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabe<cr>")
vim.keymap.set("n", "<leader>tc", "<cmd>tabclose<cr>")

