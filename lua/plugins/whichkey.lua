return {
    "folke/which-key.nvim",
    event = "VeryLazy", -- loads after UI events
    opts = {
        delay = 500,
        plugins = {
            spelling = {
                enabled = true,
                suggestions = 10,
            },
        },
    },
    config = function(_, opts)
        require("which-key").setup(opts)
    end,
}
