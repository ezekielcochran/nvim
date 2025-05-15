return {
    {
        "nvim-tree/nvim-web-devicons",
        event = "VeryLazy",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },
    {
        "echasnovski/mini.icons",
        event = "VeryLazy",
        config = function()
            require("mini.icons").setup()
        end,
    },
}
