--
-- Note that several plugins have keymaps defined in their
-- respective config/*.lua files (telescope, cmp, etc)
--

vim.g.mapleader = " "
-- I don't plan on using this, but lazy says it wants it
vim.g.maplocalleader = "\\"

-- delete by word
vim.keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete previous word" })

-- rename a symbol
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "[R]e[n]ame Symbol" })

-- change foldmethod
vim.keymap.set("n", "<leader>fi", ":set foldmethod=indent<CR>", { desc = "Set [F]oldmethod [I]ndent" })
vim.keymap.set("n", "<leader>fm", ":set foldmethod=manual<CR>", { desc = "Set [F]oldmethod [M]anual" })

-- Load copilot.vim (left unloaded by default)
vim.keymap.set("n", "<leader>cl", ":Lazy load copilot.vim<CR>", { desc = "[C]opilot [L]oad" })

-- Move highlighted blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep 'found' search terms in middle of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- leader+yank to copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "[Y]ank to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "[Y]ank to system clipboard" })

vim.keymap.set("n", "<leader>dl", vim.cmd.Ex, { desc = "[D]irectory [L]ist" })
vim.keymap.set("n", "<leader>e", function()
  vim.diagnostic.setloclist()
end, { desc = "List [E]rrors" })

--  Save and run 'make' (to compile a LaTeX document, C project, etc)
vim.keymap.set("n", "<leader>m", function()
    vim.cmd "w"
    print "making..."
    vim.system({ "make" }, { text = true }, function(res)
        if res.code == 0 then
            vim.schedule(function()
                print("make succeeded")
            end)
        else
            vim.schedule(function()
                vim.notify(res.stderr, vim.log.levels.ERROR)
            end)
        end
    end)
end, { noremap = true, silent = false, desc = "Write and [M]ake" })
vim.keymap.set("n", "<leader>l", function()
    print "making clean..."
    vim.system({ "make", "clean" }, { text = true }, function(res)
        if res.code == 0 then
            vim.schedule(function()
                print("make clean succeeded")
            end)
        else
            vim.schedule(function()
                vim.notify(res.stderr, vim.log.levels.ERROR)
            end)
        end
    end)
end, { noremap = true, silent = false, desc = "Make C[l]ean" })
