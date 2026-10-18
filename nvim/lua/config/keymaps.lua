local keymap = vim.keymap.set

keymap("i", "jk", "<escape>")

-- keymap("n", "<leader>e", ":NERDTreeToggle<cr>", { desc = "Open NERDTree" })

-- Comment
keymap("n", "<leader>lc", ":Commentary<cr>", { desc = "Comment line or selection" })
keymap("x", "<leader>lc", ":Commentary<cr>", { desc = "Comment line or selection" })

-- Cellular Automaton
keymap("n", "<leader>mr", function()
  require("cellular-automaton").start_animation("make_it_rain")
end, { desc = "Make it rain..." })

-- Remove the default Lazy menu key
vim.keymap.del("n", "<leader>l")

keymap("n", "<leader>ci", ":Krust<cr>", { desc = "Show Krust window" })
