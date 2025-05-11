return {
    "folke/which-key.nvim",
    event = "VeryLazy", -- loads after UI events (so it doesn't slow down startup)
    opts = {
        delay = 500,
        plugins = {
            spelling = {
                enabled = true,
                suggestions = 20,
            },
        },
        win = {
            border = "single", -- none, single, double, shadow
        },
        layout = {
            spacing = 4,
        },
    },
    config = function(_, opts)
        require("which-key").setup(opts)
    end,
}
