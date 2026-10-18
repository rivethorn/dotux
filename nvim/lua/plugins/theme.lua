return {
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = true,
      },
      contrast = "hard",
    },
  },

  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_enable_italic = false
      vim.g.gruvbox_material_enable_bold = false
      vim.g.gruvbox_material_background = "hard"
      -- vim.g.gruvbox_material_foreground = "original"
      vim.g.gruvbox_material_transparent_background = 1
      vim.g.gruvbox_material_disable_italic_comment = 1
    end,
  },

  {
    "vague-theme/vague.nvim",
    opts = {
      italic = false,
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          italic = false,
          transparency = true,
        },
      })
    end,
  },

  -- {
  --   "blazkowolf/gruber-darker.nvim",
  --   opts = {
  --     italic = {
  --       strings = false,
  --       comments = false,
  --       operators = false,
  --       folds = false,
  --     },
  --   },
  -- },

  {
    "guttenbergovitz/guttenbergovitz-theme",
    lazy = false,
    config = function()
      vim.opt.termguicolors = true
    end,
  },

  {
    "Mofiqul/vscode.nvim",
  },

  {
    "gmr458/vscode_modern_theme.nvim",
    config = function()
      require("vscode_modern").setup({
        cursorline = true,
        -- transparent_background = true,
        nvim_tree_darker = true,
      })
    end,
  },

  {
    "rivethorn/turbo-plus.nvim",
    lazy = false,
  },

  "jaredgorski/Mies.vim",
  "andreasvc/vim-256noir",
  "huyvohcmc/atlas.vim",
  "ciaranm/inkpot",

  {
    "Aejkatappaja/cendre",
    lazy = false,
    config = function()
      require("cendre").setup({
        background = "hard", -- "hard" | "medium" | "soft"
        italic = false,
        transparent = true,
      })
    end,
  },

  {
    "stevedylandev/compline-nvim",
    lazy = false,
  },

  {
    "casedami/neomodern.nvim",
    lazy = false,
  },

  {
    "gnfisher/tomorrow-night-blue.nvim",
    lazy = false,
    config = function()
      require("tomorrow-night-blue").setup({
        -- Enable transparent background
        transparent = true,

        -- Style overrides
        styles = {
          comments = { italic = false },
          keywords = { bold = true },
          functions = {},
          variables = {},
          diagnostics = {
            -- Inline diagnostics (virtual text)
            virtual_text = { italic = false },
          },
        },
      })
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "night",
      transparent = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = false },
        keywords = { italic = false, bold = true },
      },
    },
  },

  {
    "ajmwagar/vim-deus",
    lazy = false,
  },

  {
    "al3rez/darktooth.nvim",
    lazy = false,
  },

  {
    "ring0-rootkit/gruber-darker.nvim",
    opts = {
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruber-darker",
    },
  },
}
