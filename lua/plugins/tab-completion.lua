-- this sets tab as the suggestion complete action.

return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- Use the old settings, but override using these
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- <Tab>: Confirm the current selection
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),

        -- Disable the enter selects behaviour
        ["<CR>"] = cmp.mapping(function(fallback)
          fallback()
        end, { "i", "s" }),
      })
    end,
  },
}
