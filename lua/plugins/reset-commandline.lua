-- LazyVim is configured to show command line in center,
-- but we reset that here to be in the bottom instead.

return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      view = "cmdline",
      -- enabled = false,
    },
  },
}
