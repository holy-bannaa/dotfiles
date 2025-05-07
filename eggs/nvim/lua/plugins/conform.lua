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
            },
            formatters = {
                clang_format = {
                    command = "clang-format",
                    append_args = function()
                        return { "--style={BasedOnStyle: Google, IndentWidth: 4}" }
                    end,
                },
            },

            vim.keymap.set("n", "<leader>gf", require("conform").format),
        })
    end,
}
