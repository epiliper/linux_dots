plugins = {
	{
		'stevearc/dressing.nvim',
		opts = {},
	},

	{
		"lervag/vimtex",
		lazy = false, -- we don't want to lazy load VimTeX
		init = function()
			vim.g.vimtex_view_method = "zathura"
		end
	},
	{
		"ziontee113/icon-picker.nvim",
		config = function()
			require("icon-picker").setup({ disable_legacy_commands = true })

			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
			vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
			vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
		end
	},

	{
		'fasterius/simple-zoom.nvim',
		config = true,
	},

	{ 'LukeGoodsell/nextflow-vim' },

	{ 'norcalli/nvim-colorizer.lua',
	},
	{ 'preservim/vim-pencil',
	},

	{ 'folke/zen-mode.nvim' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'rafamadriz/friendly-snippets' },
	{ 'L3MON4D3/LuaSnip' },

	{
		'lewis6991/gitsigns.nvim',

		config = function()
			require('gitsigns').setup({
				sign_priority = 100,
			})
		end
	},

	{ 'dstein64/vim-startuptime' },

	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
	},

	{ "nvim-lua/plenary.nvim",
	},

	{
		"nvim-tree/nvim-web-devicons",
		config = function()
			require('nvim-web-devicons').setup()
		end,
	},

	{ "tpope/vim-commentary" },


	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		ops = {},
		config = function()
			require("ibl").setup()
		end,
	},

	{ "lukas-reineke/lsp-format.nvim" },

	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			'nvim-neotest/nvim-nio'
		},
	},

	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true,
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup({
			})
		end,
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		lazy = true,
		build = function() vim.fn["mkdp#util#install"]() end,

	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
}

return plugins
