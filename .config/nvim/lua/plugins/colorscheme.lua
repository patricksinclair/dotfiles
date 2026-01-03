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
return {
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.edge_enable_italic = 0
      vim.g.edge_style = "default"
      vim.g.edge_better_performance = 1
      -- vim.g.edge_disable_italic_comment = 1
      vim.cmd.colorscheme("edge")
    end,
  },
}
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
--
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
