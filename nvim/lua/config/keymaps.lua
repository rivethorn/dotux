-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- Comment
keymap("n", "<leader>lc", ":Commentary<cr>", { desc = "Comment line or selection" })
keymap("x", "<leader>lc", ":Commentary<cr>", { desc = "Comment line or selection" })
