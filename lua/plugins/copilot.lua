return {
    "github/copilot.vim",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        vim.g.copilot_no_tab_map = true
        vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', {
            expr = true,
            silent = true,
            noremap = true,
        })
        vim.api.nvim_set_keymap("i", "<C-e>", 'copilot#Dismiss()', {
            expr = true,
            silent = true,
            noremap = true,
        })
        vim.keymap.set("n", "<leader>cs", "<cmd>Copilot status<CR>", { noremap = true, silent = true, desc = "[C]opilot [S]tatus" })
        vim.keymap.set("n", "<leader>ce", "<cmd>Copilot enable<CR>", { noremap = true, silent = true, desc = "[C]opilot [E]nable" })
        vim.keymap.set("n", "<leader>cd", "<cmd>Copilot disable<CR>", { noremap = true, silent = true, desc = "[C]opilot [D]isable" })
        vim.keymap.set("n", "<leader>cp", "<cmd>Copilot panel<CR>", { noremap = true, silent = true, desc = "Open [C]opilot [P]anel" })
    end
}
