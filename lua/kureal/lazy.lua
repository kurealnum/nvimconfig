-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			dependencies = { { "nvim-lua/plenary.nvim" } },
		},
		{
			"nvim-telescope/telescope-file-browser.nvim",
			dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		},
		-- color schemes
		{
			"EdenEast/nightfox.nvim",
		},
		{
			"scottmckendry/cyberdream.nvim",
		},
		{
			"daschw/leaf.nvim",
		},
		{
			"kartikp10/noctis.nvim",
			dependencies = {
				"rktjmp/lush.nvim",
			},
		},
		{
			{ "rose-pine/neovim", name = "rose-pine" },
		},
		{
			"ray-x/starry.nvim",
		},
		-- transparency (kinda counts as a color scheme)
		{
			"xiyaowong/transparent.nvim",
		},
		-- end color schemes
		{
			"nvim-treesitter/nvim-treesitter",
		},
		{
			"VonHeikemen/lsp-zero.nvim",
			branch = "v4.x",
			dependencies = {
				{ "neovim/nvim-lspconfig" },

				-- Sources
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/nvim-cmp" },
				{ "hrsh7th/cmp-nvim-lua" },
				{ "hrsh7th/cmp-path" },
				{ "saadparwaiz1/cmp_luasnip" },

				-- Mason
				{ "williamboman/mason.nvim" },
				{ "williamboman/mason-lspconfig.nvim" },
			},
		},
		{
			"ray-x/lsp_signature.nvim",
			event = "VeryLazy",
			opts = {},
		},
		{ "L3MON4D3/LuaSnip" },
		{ "akinsho/toggleterm.nvim", version = "*", config = true },
		{ "sindrets/diffview.nvim" },
		{
			"rmagatti/auto-session",
			lazy = false,
			dependencies = {
				"nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
			},
			config = function()
				require("auto-session").setup({
					auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
				})
			end,
		},
		{ "nvim-tree/nvim-web-devicons" },
		{
			"numToStr/Comment.nvim",
		},
		{
			"mhartington/formatter.nvim",
		},
		{ "lewis6991/gitsigns.nvim" },
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
		},
		{
			"nvim-lualine/lualine.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
		},
		{
			"folke/trouble.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
		},
		{
			"windwp/nvim-ts-autotag",
		},
		{
			"lukas-reineke/indent-blankline.nvim",
		},
		{
			"FotiadisM/tabset.nvim",
		},
		{
			"mfussenegger/nvim-jdtls",
		},
		{
			"romgrk/barbar.nvim",
			dependencies = {
				"lewis6991/gitsigns.nvim",
				"nvim-tree/nvim-web-devicons",
			},
			init = function()
				vim.g.barbar_auto_setup = false
			end,
			opts = {
				animation = false,
			},
		},
		{
			"nvim-pack/nvim-spectre",
			dependencies = { "nvim-lua/plenary.nvim", "folke/trouble.nvim" },
		},
		{
			"MeanderingProgrammer/render-markdown.nvim",
			dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
			-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
			-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
			---@module 'render-markdown'
			---@type render.md.UserConfig
			opts = {},
		},
		{
			"lervag/vimtex",
			lazy = false, -- we don't want to lazy load VimTeX
			-- tag = "v2.15", -- uncomment to pin to a specific release
			init = function()
				-- VimTeX configuration goes here, e.g.
				vim.g.vimtex_view_method = "zathura"
				vim.g.vimtex_view_forward_search_on_start = false
			end,
		},
		{
			"3rd/image.nvim",
		},
	},
	{
		rocks = {
			hererocks = true, -- recommended if you do not have global installation of Lua 5.1.
		},
	},
	ui = {
		border = "single",
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "nightfox" } },
	-- automatically check for plugin updates
	checker = { enabled = true, notify = false },
})
