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
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("tokyonight").setup({
        style = "storm", -- gần VS Code nhất
        transparent = false,
      })
      vim.cmd("colorscheme tokyonight")
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    priority = 1000,
    lazy = false,
    config = function()
      require("github-theme").setup({
        options = {
          theme_style = "dimmed", -- hoặc "dimmed"
        },
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("gruvbox").setup({
        contrast = "soft", -- 👈 rất quan trọng (dịu mắt)
      })
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto", -- tự theo colorscheme
          ignore_focus = { 'NvimTree' },
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },

        sections = {
          lualine_a = { { "mode", upper = true } },
          lualine_b = {
            "branch",
            "diff",
            {
              "diagnostics",
              sources = { "nvim_diagnostic" },
            },
          },
          lualine_c = { { "filename", path = 1 } },

          lualine_x = { "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      })
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
  },
}
