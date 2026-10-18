local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local rivethornGroup = augroup("rivethorn", {})

autocmd("BufEnter", {
  group = rivethornGroup,
  callback = function()
    if vim.bo.filetype == "c" or vim.bo.filetype == "cpp" then
      pcall(vim.lsp.enable, "clangd")
    end
  end,
})
