return {
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
                "gopls",
            },
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
        })
        lspconfig.clangd.setup({
            capabilities = capabilities,
        })
        lspconfig.pyright.setup({
            capabilities = capabilities,
        })
        lspconfig.ts_ls.setup({
            capabilities = capabilities,
        })
        lspconfig.gopls.setup({
            capabilities = capabilities,
        })
        lspconfig.hyprls.setup({
            capabilities = capabilities,
        })

    end,
}
