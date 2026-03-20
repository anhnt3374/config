local autocmd = vim.api.nvim_create_autocmd

-- highlight when yanking
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- auto remove trailing whitespace
autocmd("BufWritePre", {
  pattern = "*",
  command = "%s/\\s\\+$//e",
})
