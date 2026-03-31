return {
  {
    "j-morano/buffer_manager.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",

    },
    config = function()
      require("buffer_manager").setup({
        width = 0.4,
        height = 0.6,
      })
    end,
  },
}
