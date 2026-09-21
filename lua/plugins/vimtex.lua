return {
  "lervag/vimtex",
  lazy = false,     -- don't lazy load VimTeX
  tag = "v2.17", -- pin to a specific release
  init = function()
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_activate = 0 -- don't steal focus from nvim
    vim.g.vimtex_view_skim_reading_bar = 1 -- highlight synced line
  end
}
