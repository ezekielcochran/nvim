return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })
        vim.lsp.config("texlab", {
            settings = {
                texlab = {
                    diagnostics = {
                        ignoredPatterns = { "Unused label", "may have changed" },
                    },
                },
            },
        })

        vim.lsp.enable({
            "pyright",
            "ts_ls",
            "rust_analyzer",
            "clangd",
            "bashls",
            "texlab",
            "jdtls",
            "lua_ls",
        })
    end,
}
