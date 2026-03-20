return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
  },

  -- Mason (install LSP dễ dàng)
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright" },
      })
    end,
  },
}
