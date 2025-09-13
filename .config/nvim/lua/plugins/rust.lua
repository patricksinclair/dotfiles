return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      rust_analyzer = function(_, opts)
        -- Disable progress messages
        opts.handlers = {
          ["$/progress"] = function(_, _, _, _) end,
        }
      end,
    },
  },
}
