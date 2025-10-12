vim.g.mapleader = " "

-- create a new line with 2 spaces around it
vim.keymap.set("n", "<leader>tt", "o<Esc>o<Esc>o<Esc>k")

-- sets window size = ideal size for 2 buffers and 2 terms
vim.keymap.set("n", "<C-w>.", "<C-w>=z12<CR>")

-- open netrw
vim.keymap.set("n", "<leader>pv", "<cmd>NnnPicker<cr>")

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

-- open diagnostics
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

-- quit all
vim.cmd("command Q qa!")

-- yank to global clipboard
vim.keymap.set("v", "<leader>yg", '"+y')

-- go to definition/declaration
vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })

-- delete string -> "string" (from outside the quote)
vim.api.nvim_set_keymap("n", "ds", 'd2f"', { noremap = true, silent = true })
-- delete string -> "string" (from the quote itself)
vim.api.nvim_set_keymap("n", "dS", 'd1f"', { noremap = true, silent = true })

-- navigate to and fix next mispelled word
vim.api.nvim_set_keymap("n", "m", "]s", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "M", "[s", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>f", "]s 1z=", { noremap = true, silent = true })
