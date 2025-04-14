--return {
--  "scottmckendry/cyberdream.nvim",
--  lazy = false,
--  priority = 10,
--  config = function()
--    require("cyberdream").setup({
--      -- Enable transparent background
--      transparent = false,
--
--      -- Enable italics comments
--      italic_comments = true,
--
--      -- Replace all fillchars with ' ' for the ultimate clean look
--      hide_fillchars = false,
--
--      -- Modern borderless telescope theme
--      borderless_telescope = true,
--
--      -- Set terminal colors used in `:terminal`
--      terminal_colors = true,
--
--      theme = {
--        variant = "default", -- use "light" for the light variant
--        highlights = {
--          -- Highlight groups to override, adding new groups is also possible
--          -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values
--
--          -- Example:
--          Comment = { fg = "#696969", bg = "NONE", italic = true },
--
--          -- Complete list can be found in `lua/cyberdream/theme.lua`
--        },
--
--        -- Override a color entirely
--        colors = {
--          -- For a list of colors see `lua/cyberdream/colours.lua`
--          -- Example:
--          bg = "#16181a",
--          bgAlt = "#1e2124",
--          bgHighlight = "#3c4048",
--          fg = "#ffffff",
--          grey = "#7b8496",
--          blue = "#5ea1ff",
--          green = "#5eff6c",
--          cyan = "#5ef1ff",
--          red = "#ff6e5e",
--          yellow = "#f1ff5e",
--          magenta = "#ff5ef1",
--          pink = "#ff5ea0",
--          orange = "#ffbd5e",
--          purple = "#bd5eff",
--        },
--      },
--    })
--
--      vim.cmd.colorscheme "cyberdream"
--  end
--
--}

return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
			-- local transparent = true,
		end,
	},
}

-- return {
-- 	{
-- 		"scottmckendry/cyberdream.nvim",
-- 		lazy = false,
-- 		priority = 1000,
-- 	},
-- }

--return {
--  {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    priority = 1000,
--    config = function()
--      require("catppuccin").setup({
--        flavour = "macchiato", -- latte, frappe, macchiato, mocha
--        background = { -- :h background
--        light = "latte",
--        dark = "mocha",
--      },
--      transparent_background = false, -- disables setting the background color.
--      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--      dim_inactive = {
--        enabled = true, -- dims the background color of inactive window
--        shade = "dark",
--        percentage = 0.15, -- percentage of the shade to apply to the inactive window
--      },
--      no_italic = false, -- Force no italic
--      no_bold = false, -- Force no bold
--      no_underline = false, -- Force no underline
--      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--      comments = { "italic" }, -- Change the style of comments
--      conditionals = { "italic" },
--      loops = {},
--      functions = {},
--      keywords = {},
--      strings = {},
--      variables = {},
--      numbers = {},
--      booleans = {},
--      properties = {},
--      types = {},
--      operators = {},
--      -- miscs = {}, -- Uncomment to turn off hard-coded styles
--    },
--    color_overrides = {},
--    custom_highlights = {},
--    default_integrations = true,
--    integrations = {
--      cmp = true,
--      gitsigns = true,
--      nvimtree = true,
--      treesitter = true,
--      notify = false,
--      mini = {
--        enabled = true,
--        indentscope_color = "",
--      },
--      -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--    },
--  })
--      vim.cmd.colorscheme "catppuccin"
--    end,
--}
--}
