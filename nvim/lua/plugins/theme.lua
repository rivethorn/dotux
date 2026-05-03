-- return {
--   "guttenbergovitz/guttenbergovitz-theme",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.opt.termguicolors = true
--     -- Optional: enable italics for comments
--     -- vim.g.guttenbergovitz_italics = true
--     require("guttenbergovitz").setup()
--     vim.cmd.colorscheme("guttenbergovitz")
--   end,
-- }

-- return {
--   "blazkowolf/gruber-darker.nvim",
--   opts = {
--     italic = {
--       strings = false,
--       comments = false,
--       folds = false,
--     },
--   },
-- }

-- return {
--   "vague-theme/vague.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {
--     italic = false,
--   },
-- }

return {
  "sainnhe/gruvbox-material",
  -- lazy = false,
  -- priority = 1000,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_enable_italic = false
    vim.g.gruvbox_material_enable_bold = true
    vim.g.gruvbox_material_background = "hard"
    vim.g.gruvbox_material_foreground = "mix"
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
