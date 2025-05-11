return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
        -- TODO: are these the languages I want?
        -- can I make a list of supported languages to reference anywhere (LSPs, for example)?
        ensure_installed = {
            "c",
            "lua",
            "rust",
            "lua",
            "vim",
            "bash",
            "python",
            "javascript",
            "html"
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
