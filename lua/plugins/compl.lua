-- compilation.lua
-- A focused AI assistant plugin collection for Neovim
-- Combines GitHub Copilot and nvim-cmp
return { -- GitHub Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      panel = {
        enabled = true,
        auto_refresh = true,
      },
      filetypes = {
        markdown = true,
        help = true,
        lua = true,
        python = true,
        rust = true,
        javascript = true,
        typescript = true,
        -- Add more filetypes as needed
      },
    },
  }, -- Copilot CMP integration
  {
    "hrsh7th/nvim-cmp",
    enabled = true,
  },
  {
    "zbirenbaum/copilot-cmp",
    opts = {},
    config = function(_, opts)
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup(opts)
      -- attach cmp source whenever copilot attaches
      -- fixes lazy-loading issues with the copilot cmp source
      LazyVim.lsp.on_attach(function()
        copilot_cmp._on_insert_enter({})
      end, "copilot")
    end,
    specs = {
      {
        "hrsh7th/nvim-cmp",
        optional = true,
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
          -- Ensure opts.sources is a table
          opts.sources = opts.sources or {}
          table.insert(opts.sources, 1, {
            name = "copilot",
            group_index = 1,
            priority = 100,
          })
        end,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    event = "VeryLazy",
    lazy = false,
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
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({
            select = true,
          }),
        }),
        sources = cmp.config.sources({
          {
            name = "nvim_lsp",
          },
          {
            name = "copilot",
          },
          {
            name = "luasnip",
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
  }, -- LuaSnip for Snippet Support
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip.loaders.from_vscode").lazy_load()
    end,
  },
}
