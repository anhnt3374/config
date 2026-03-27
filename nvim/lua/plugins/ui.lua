return {
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup({
        position = "bottom",
        height = 12,
        mode = "diagnostics",
        group = true,
        padding = true,

        auto_open = false,
        auto_close = true,
        auto_preview = true, -- 🔥 hover preview

        action_keys = {
          close = "q",
          cancel = "<esc>",
          refresh = "r",
          jump = { "<cr>", "<tab>" },
        },
      })
    end,
  },
}
