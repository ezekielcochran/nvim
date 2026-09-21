-- Socket for Skim's inverse search (cmd-shift-click in the PDF jumps here).
-- nvr's default address, so no --servername needed on the Skim side.
-- pcall because only the first nvim instance can bind it; the rest fail silently.
pcall(vim.fn.serverstart, "/tmp/nvimsocket")
