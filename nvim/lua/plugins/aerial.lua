return {
  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("aerial").setup({
        layout = {
          default_direction = "right",
          min_width = 30,
        },

        show_guides = true,

        filter_kind = false, -- show all (function, class...)

        attach_mode = "window",
      })
    end,
  },
}
