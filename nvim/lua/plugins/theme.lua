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

return {
  "blazkowolf/gruber-darker.nvim",
  opts = {
    italic = {
      strings = false,
      comments = false,
      folds = false,
    },
  },
}
