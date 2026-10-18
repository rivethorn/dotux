return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        --- Hide "[No Name]" buffers from the top bar if other files are open
        custom_filter = function(buf_number)
          -- Keep the buffer if it has a file name
          if vim.fn.bufname(buf_number) ~= "" then
            return true
          end
          -- Hide it if it's empty and not the only buffer left
          local listed_buffers = vim.fn.getbufinfo({ buflisted = 1 })
          return #listed_buffers <= 1
        end,
      },
    },
  },
}
