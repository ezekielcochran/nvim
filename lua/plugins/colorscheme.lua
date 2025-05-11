return {
    -- the colorscheme should be available when starting Neovim
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false, -- main colorscheme, load immediately
        priority = 1000, -- load this first
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
}
