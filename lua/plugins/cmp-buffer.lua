-- lua/plugins/cmp-buffer.lua
return {
  {
    "hrsh7th/cmp-buffer",
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "buffer" },
        },
      })
    end,
  },
}
