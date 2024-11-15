return{
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"clangd",
				"pyright",
				"ts_ls",
				"rust_analyzer",
				"gopls"
			}
		})
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
		lspconfig.rust_analyzer.setup {}
		lspconfig.clangd.setup {}
		lspconfig.pyright.setup {}
		lspconfig.ts_ls.setup {}
		lspconfig.gopls.setup {}

		vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
		vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
		vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
		vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

		vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
		vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
		vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
	end
}
