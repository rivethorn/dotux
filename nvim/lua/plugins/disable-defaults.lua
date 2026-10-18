return {
  {
    "LazyVim/LazyVim",
    opts = {
      news = {
        lazyvim = false,
        neovim = false,
      },
      -- icons = {
      --   kind = false,
      -- },
    },
  },

  -- {
  --   "nvim-mini/mini.icons",
  --   enabled = false,
  -- },

  -- {
  --   "nvim-tree/nvim-web-devicons",
  --   enabled = false,
  -- },

  -- {
  --   "nvim-lualine/lualine.nvim",
  --   enabled = false,
  -- },

  {
    "snacks.nvim",
    opts = {
      styles = {
        zen = {
          width = 100,
        },
      },
      zen = {
        toggles = {
          dim = false,
        },
      },
      dashboard = {
        enabled = false,
      },
      scroll = {
        enabled = false,
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Remove the clock from lualine_z
      opts.sections.lualine_z = {}
    end,
  },

  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        -- menu = {
        --   auto_show = false,
        -- },
        -- ghost_text = {
        --   enabled = false,
        -- },
      },
    },
  },

  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   enabled = false,
  -- },

  {
    "folke/noice.nvim",
    enabled = false,
  },
}
