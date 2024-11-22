-- this disables automatic completions, and brings up the dialog on <C-Space> instead.

return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.completion = {
        autocomplete = false,
      }

      -- Use the old settings, but override using these
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "s" }),
      })
    end,
  },
}
