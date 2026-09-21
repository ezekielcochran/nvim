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
