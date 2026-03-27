return {
  {
    "hat0uma/csvview.nvim",
    ft = { "csv" },
    config = function()
      require("csvview").setup({
        view = {
          display_mode = "border", -- đẹp hơn
          spacing = 1,
        },
      })
    end,
  },
}
