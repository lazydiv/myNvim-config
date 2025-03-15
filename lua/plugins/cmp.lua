-- ~/.config/nvim/lua/plugins/cmp.lua
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({
          select = true,
        }),
      }),
      sources = cmp.config.sources({
        {
          name = "nvim_lsp",
        },
        {
          name = "buffer",
        },
        {
          name = "path",
        },
      }),
    })
  end,
}
