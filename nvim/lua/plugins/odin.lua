return {
  -- Syntax Highlighting (Tree-sitter)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "odin") -- If parser is available in nvim-treesitter
    end,
  },

  -- LSP: ols
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          mason = false, -- Uncomment if you built ols yourself and don't want Mason shim issues
          settings = { -- or init_options, both work
            enable_inlay_hints_params = true,
            enable_inlay_hints_default_params = true,
            enable_inlay_hints_implicit_return = true,
            enable_inlay_hints_optional_result = true,
          },
          cmd = { "/opt/homebrew/bin/ols" }, -- if needed
          init_options = {
            -- Example collections (adjust to your setup)
            -- collections = {
            --   { name = "core", path = vim.fn.expand("~/odin/core") },
            -- },
            checker_args = "-strict-style", -- optional
          },
        },
      },
    },
  },

  -- Formatting with conform.nvim (LazyVim already includes it)
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        odin = { "odinfmt" },
      },
      formatters = {
        odinfmt = {
          command = "odinfmt",
          args = { "-stdin" }, -- Important for stdin support
          stdin = true,
        },
      },
    },
  },
}
