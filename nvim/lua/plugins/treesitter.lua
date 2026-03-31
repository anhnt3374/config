return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "python",
          "javascript",
          "typescript",
          "html",
          "css",
          "markdown",
          "markdown_inline"
        },
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<leader>ss",
            node_incremental = "<leader>ss",
            node_decremental = "<leader>sd",
            scope_incremental = "<leader>sc",
          },
        },
      })
    end,
  }
}
