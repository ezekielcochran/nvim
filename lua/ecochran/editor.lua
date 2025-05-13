-- Set tab width to 4 (and expand them as spaces)
vim.opt.expandtab = true    -- Convert tabs to spaces
vim.opt.shiftwidth = 4      -- Number of spaces to use for each step of (auto)indent
vim.opt.tabstop = 4         -- Number of spaces that a <Tab> in the file counts for
vim.opt.softtabstop = 4     -- Number of spaces a <Tab> feels like in insert mode

-- Assorted editor settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.colorcolumn = "80"

-- Show invisible characters
vim.opt.list = true
vim.opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣",
    extends = "›",
    precedes = "‹",
    -- eol = "↲" -- this one is a little too verbose
}
