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

-- auto open panel when have error
vim.api.nvim_create_autocmd("DiagnosticChanged", {
  callback = function(args)
    local bufnr = args.buf

    -- lấy đúng diagnostics của buffer vừa update
    local diagnostics = vim.diagnostic.get(bufnr)

    if #diagnostics > 0 then
      vim.schedule(function()
        vim.cmd("Trouble diagnostics")
      end)
    end
  end,
})
