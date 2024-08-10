vim.g.mapleader = " "

-- create a new line with 2 spaces around it
vim.keymap.set("n", "<leader>tt", "o<Esc>o<Esc>o<Esc>k")

-- sets window size = ideal size for 2 buffers and 2 terms
vim.keymap.set("n", "<C-w>.", "<C-w>=z12<CR>")

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

-- open diagnostics
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
