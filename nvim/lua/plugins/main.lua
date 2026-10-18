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
    "tribela/transparent.nvim",
    event = "VimEnter",
    config = true,
    enabled = true,
  },

  "tpope/vim-commentary",

  "eandrju/cellular-automaton.nvim",

  "Djancyp/better-comments.nvim",

  -- "preservim/nerdtree",

  "kosayoda/nvim-lightbulb",

  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },
}
