return {
    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },
    {
        "echasnovski/mini.icons",
        config = function()
            require("mini.icons").setup()
        end,
    },
}
