return {
  {
    "OXY2DEV/markview.nvim",
    enabled = true,
    lazy = false, -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },

  {
    "tpope/vim-commentary",
  },

  {
    "xiyaowong/transparent.nvim",
    lazy = false,
  },

  {
    "snacks.nvim",
    opts = {
      dashboard = {
        enabled = false,
      },
      scroll = {
        enabled = false,
      },
    },
  },

  {
    "folke/noice.nvim",
    enabled = false,
  },
}
