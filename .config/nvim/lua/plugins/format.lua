return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      rust = { "rustfmt" },
    },
  },
}
-- return {
--   "stevearc/conform.nvim",
--   opts = {
--     -- Enable format on save (Rust only here, can expand later)
--     format_on_save = function(bufnr)
--       local ft = vim.bo[bufnr].filetype
--       if ft == "rust" then
--         return { timeout_ms = 1000, lsp_fallback = true }
--       end
--     end,
--     formatters_by_ft = {
--       rust = { "rustfmt" },
--     },
--   },
-- }
