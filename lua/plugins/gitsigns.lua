return {
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPost", "BufNewFile" },
        config = function()
            require("gitsigns").setup({
                signs = {
                    add          = { text = "+" },
                    change       = { text = "~" },
                    changedelete = { text = "~" },
                    delete       = { text = "_" },
                    topdelete    = { text = "‾" },
                    untracked    = { text = "┆" },
                },
                signs_staged_enable = true,
                signs_staged = {
                    add          = { text = "+" },
                    change       = { text = "~" },
                    changedelete = { text = "~" },
                    delete       = { text = "_" },
                    topdelete    = { text = "‾" },
                    untracked    = { text = "┆" },
                },
            })
        end,
    },
}
