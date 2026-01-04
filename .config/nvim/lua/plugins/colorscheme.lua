-- Using Lazy
-- return {
--   {
--     "navarasu/onedark.nvim",
--     priority = 1000, -- make sure to load this before all the other start plugins
--     config = function()
--       require("onedark").setup({
--         style = "darker",
--       })
--       -- Enable theme
--       require("onedark").load()
--     end,
--   },
-- }

-- return {
--   {
--     "tiagovla/tokyodark.nvim",
--     opts = {
--       styles = {
--         comments = { italic = true },
--         keywords = { italic = false }, -- disable italics on keywords
--         identifiers = { italic = false }, -- you might want to disable this too
--         functions = {},
--         variables = {},
--       },
--     },
--     config = function(_, opts)
--       require("tokyodark").setup(opts)
--       vim.cmd([[colorscheme tokyodark]])
--     end,
--   },
-- }

--   return {
--     "sainnhe/edge",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       -- Optionally configure and load the colorscheme
--       -- directly inside the plugin declaration.
--       vim.g.edge_enable_italic = 0
--       vim.g.edge_style = "default"
--       vim.g.edge_better_performance = 1
--       -- vim.g.edge_disable_italic_comment = 1
--       vim.cmd.colorscheme("edge")
--     end,
--   },
-- }
-- return {
--   {
--     "marko-cerovac/material.nvim",
--     priority = 1000,
--
--     config = function()
--       require("material").setup({
--         -- style = "darker",
--         vim.g.material_style="deep ocean",
--       })
--       -- Enable theme
--       -- require("onedark").load()
--     end,
--   },
-- }

-- return {
--   {
--     "rebelot/kanagawa.nvim",
--     name = "kanagawa",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("kanagawa").setup({
--         compile = false, -- enable compiling the colorscheme
--         undercurl = true, -- enable undercurls
--         commentStyle = { italic = true },
--         functionStyle = {},
--         keywordStyle = { italic = false },
--         statementStyle = { bold = true },
--         typeStyle = {},
--         transparent = false, -- do not set background color
--         dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--         terminalColors = true, -- define vim.g.terminal_color_{0,17}
--         colors = { -- add/modify theme and palette colors
--           palette = {},
--           theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--         },
--         overrides = function(colors) -- add/modify highlights
--           return {}
--         end,
--         theme = "wave", -- Load "wave" theme
--         background = { -- map the value of 'background' option to a theme
--           dark = "wave", -- try "dragon" !
--           light = "lotus",
--         },
--       })
--
--       vim.cmd("colorscheme kanagawa-dragon")
--     end,
--   },
-- }

-- return {
--   {
--     "EdenEast/nightfox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd("colorscheme duskfox")
--     end,
--   },
-- }
-- return {
--   "github-main-user/lytmode.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("lytmode").setup({
--       italic_inlayhints = true,
--     })
--   end,
-- }
-- -- Configure LazyVim to load gruvbox
-- return {
--   "LazyVim/LazyVim",
--   opts = {
--     colorscheme = "gruvbox",
--   },
--   -- },
-- }

return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = {
        terminal = false,
        sidebars = false,
        floating_windows = false,
        cursor_line = false,
        lsp_virtual_text = false,
        non_current_windows = false,
        filetypes = {},
      },
      styles = {
        comments = { italic = true },
        strings = {},
        keywords = {},
        functions = {},
        variables = {},
        operators = {},
        types = {},
      },
      plugins = {
        -- Enable the plugins you use
        -- "nvim-cmp",
        -- "nvim-tree",
        -- "telescope",
        -- etc.
      },
      disable = {
        colored_cursor = false,
        borders = false,
        background = false,
        term_colors = false,
        eob_lines = false,
      },
      high_visibility = {
        lighter = false,
        darker = false,
      },
      lualine_style = "default",
      async_loading = true,
    },
    config = function(_, opts)
      vim.g.material_style = "deep ocean"
      require("material").setup(opts)
      vim.cmd([[colorscheme material]])
    end,
  },
}

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     config = function()
--       require("catppuccin").setup({
--         flavour = "mocha", -- latte, frappe, macchiato, mocha
--         background = { -- :h background
--           light = "latte",
--           dark = "mocha",
--         },
--         transparent_background = false, -- disables setting the background color.
--         float = {
--           transparent = false, -- enable transparent floating windows
--           solid = false, -- use solid styling for floating windows, see |winborder|
--         },
--         show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--         term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--         dim_inactive = {
--           enabled = false, -- dims the background color of inactive window
--           shade = "dark",
--           percentage = 0.15, -- percentage of the shade to apply to the inactive window
--         },
--         no_italic = false, -- Force no italic
--         no_bold = false, -- Force no bold
--         no_underline = false, -- Force no underline
--         styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--           comments = { "italic" }, -- Change the style of comments
--           conditionals = { "italic" },
--           loops = {},
--           functions = {},
--           keywords = {},
--           strings = {},
--           variables = {},
--           numbers = {},
--           booleans = {},
--           properties = {},
--           types = {},
--           operators = {},
--           -- miscs = {}, -- Uncomment to turn off hard-coded styles
--         },
--         lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
--           virtual_text = {
--             errors = { "italic" },
--             hints = { "italic" },
--             warnings = { "italic" },
--             information = { "italic" },
--             ok = { "italic" },
--           },
--           underlines = {
--             errors = { "underline" },
--             hints = { "underline" },
--             warnings = { "underline" },
--             information = { "underline" },
--             ok = { "underline" },
--           },
--           inlay_hints = {
--             background = true,
--           },
--         },
--         color_overrides = {},
--         custom_highlights = {},
--         default_integrations = true,
--         auto_integrations = false,
--         integrations = {
--           cmp = true,
--           gitsigns = true,
--           nvimtree = true,
--           notify = false,
--           mini = {
--             enabled = true,
--             indentscope_color = "",
--           },
--           -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--         },
--       })
--
--       -- setup must be called before loading
--       vim.cmd("colorscheme catppuccin")
--     end,
--   },
-- }
