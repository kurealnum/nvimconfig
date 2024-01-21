vim.api.nvim_set_keymap(
  "n",
  "<leader>po",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<leader>pp",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
