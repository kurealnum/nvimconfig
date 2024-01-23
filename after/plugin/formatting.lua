require("formatter").setup({
  logging = true,
  filetype = {
    css = {
      require("formatter.filetypes.css").prettier,
    },
	python = {
		require("formatter.filetypes.python").black,
	},
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },
    json = {
      require("formatter.filetypes.json").prettier,
    },
    markdown = {
      require("formatter.filetypes.markdown").prettier,
    },
    vue = {
      require("formatter.filetypes.vue").prettier,
    },
  },
})

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})

