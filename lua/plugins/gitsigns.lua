return {
    {
        "lewis6991/gitsigns.nvim",
        -- TODO: I'm not sure when this loads?
        -- default lazy, and no triggering on opened file, keybinds, etc
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
