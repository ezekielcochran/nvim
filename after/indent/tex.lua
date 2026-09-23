-- Don't auto-indent on these (common in LaTeX) characters.
-- The default auto-indent disagrees with my 'indent after \section'
-- preference, so this was very annoying.
vim.opt_local.indentkeys:remove({ "]", "}", "&" })
