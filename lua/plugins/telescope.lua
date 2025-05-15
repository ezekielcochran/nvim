return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require "telescope.builtin"
            vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
            vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
            -- By default, find_files seems to exclude git-ignored files and dotfiles.
            vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
            vim.keymap.set("n", "<leader>st", builtin.git_files, { desc = "[S]earch [T]racked Files" })
            vim.keymap.set("n", "<leader>saf", function()
                builtin.find_files({ hidden = true, no_ignore = true })
            end, { desc = "[S]earch [A]ll [F]iles" })
            vim.keymap.set("n", "<leader>sag", function()
                builtin.live_grep({
                    additional_args = function()
                        -- These flags to ripgrep let it not exclude dotfiles and gitignored files
                        return { "--hidden", "--no-ignore", "--no-ignore-vcs" }
                    end
                })
            end, { desc = "[S]earch [A]ll by [G]rep" })
            vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
            vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
            vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
            vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
            vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
            vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = "[S]earch Recent Files (\".\" for repeat)" })
            vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "Find existing buffers" })
        end
    }
}

