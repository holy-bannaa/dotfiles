return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- You can customize some of the format options for the filetype (:help conform.format)
				-- Conform will run the first available formatter
				c = { "clang_format" },
				scss = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
			},
			formatters = {
				clang_format = {
					command = "clang-format",
					append_args = function()
						return { "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Always}" }
					end,
				},
				prettier = { -- Applies to both prettier and prettierd
					prepend_args = {
						"--tab-width=4",
						"--use-tabs", -- Use tabs instead of spaces
					},
				},
			},

			vim.keymap.set("n", "<leader>gf", require("conform").format),
		})
	end,
}
