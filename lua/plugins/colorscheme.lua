return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000, -- high priority is faster
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
}
