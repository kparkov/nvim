-- this sets tab as the suggestion complete action.

return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<Tab>"] = { "accept" },
        ["<CR>"] = {},
      },
    },
  },
}
