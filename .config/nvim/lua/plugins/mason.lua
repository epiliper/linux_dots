return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local mason = require("mason")
		mason.setup()
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")
		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"clangd",
				"rust_analyzer",
				"tailwindcss",
				"ruff_lsp",
				"emmet_language_server",
				"typst_lsp",
			},
		})
	end,
}
