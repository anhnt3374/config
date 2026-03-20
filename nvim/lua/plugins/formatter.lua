return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          python = { "ruff_fix", "black" },
        },

        format_on_save = function(bufnr)
          if vim.g.autoformat then
            return { timeout_ms = 500, lsp_fallback = true }
          end
        end,
      })
    end,
  },
}
