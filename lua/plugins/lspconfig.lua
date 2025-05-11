return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.pyright.setup({})
        lspconfig.ts_ls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.clangd.setup({})
        lspconfig.bashls.setup({})
        lspconfig.texlab.setup({})
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    }
                }
            }
        })
    end,
}
