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
		{ "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
		{ "romgrk/doom-one.vim" },
		{ "DonJulve/NeoCyberVim" },
		{ "tiesen243/vercel.nvim" },
		{ "sponkurtus2/angelic.nvim" },
		{ "Skalyaev/a-nvim-theme" },
		{ "neko-night/nvim" },
		{ "wtfox/jellybeans.nvim" },
		{ "ficcdaf/ashen.nvim" },
		{ "0xstepit/flow.nvim" },
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
			"luukvbaal/nnn.nvim",
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
			"OXY2DEV/markview.nvim",
			lazy = false, -- Recommended
			-- ft = "markdown" -- If you decide to lazy-load anyway

			dependencies = {
				"nvim-treesitter/nvim-treesitter",
				"nvim-tree/nvim-web-devicons",
			},
		},
		{
			"lervag/vimtex",
			lazy = false, -- we don't want to lazy load VimTeX
			-- tag = "v2.15", -- uncomment to pin to a specific release
			init = function()
				-- VimTeX configuration goes here, e.g.
				vim.g.vimtex_view_method = "zathura"
				vim.g.vimtex_view_forward_search_on_start = false
				vim.g.vimtex_compiler_latexmk = {
					aux_dir = "/home/oscar/.texfiles/",
					out_dir = "/home/oscar/.texfiles/",
				}
			end,
		},
		{
			"3rd/image.nvim",
		},
		{
			"saecki/crates.nvim",
			ft = { "toml" },
			config = function()
				require("crates").setup({
					completion = {
						cmp = {
							enabled = true,
						},
					},
				})
				require("cmp").setup.buffer({
					sources = { { name = "crates" } },
				})
			end,
		},
		{
			"mrcjkb/rustaceanvim",
			version = "^5", -- Recommended
			lazy = false, -- This plugin is already lazy
			ft = "rust",
			config = function()
				local mason_registry = require("mason-registry")
				local codelldb = mason_registry.get_package("codelldb")
				local extension_path = codelldb:get_install_path() .. "/extension/"
				local codelldb_path = extension_path .. "adapter/codelldb"
				-- local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
				-- If you are on Linux, replace the line above with the line below:
				local liblldb_path = extension_path .. "lldb/lib/liblldb.so"
				local cfg = require("rustaceanvim.config")

				vim.g.rustaceanvim = {
					dap = {
						adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
					},
				}
			end,
		},
		{
			"azratul/live-share.nvim",
			event = "VeryLazy",
			dependencies = {
				"jbyuki/instant.nvim",
			},
			config = function()
				vim.g.instant_username = "kureal"
				require("live-share").setup({
					port_internal = 9876,
					max_attempts = 20,
					service_url = "/tmp/service.url",
					service = "serveo.net",
				})
			end,
		},
		{ "wakatime/vim-wakatime", lazy = false },
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
