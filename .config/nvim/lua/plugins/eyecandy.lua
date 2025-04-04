return {
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			smear_between_buffers = true,
			smear_between_neighbor_lines = true,
			scroll_buffer_space = true,
			legacy_computing_symbols_support = true,
			smear_insert_mode = true,
		},
	},

	{ "norcalli/nvim-colorizer.lua" },
	{ "preservim/vim-pencil" },
	{ "folke/zen-mode.nvim" },
	{
		"stevearc/dressing.nvim",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",

		config = function()
			require("gitsigns").setup({
				sign_priority = 100,
			})
		end,
	},
	{
		"fasterius/simple-zoom.nvim",
		config = true,
	},
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
	},

	{ "nvim-lua/plenary.nvim" },

	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require("nvim-web-devicons").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		ops = {},
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		lazy = true,
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
}
