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
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function(args)
    local bufnr = args.buf

    -- lấy error diagnostics
    local errors = vim.diagnostic.get(bufnr, {
      severity = vim.diagnostic.severity.ERROR,
    })

    if #errors > 0 then
      vim.schedule(function()
        local trouble = require("trouble")

        -- chỉ mở nếu chưa mở
        if not trouble.is_open() then
          trouble.open("diagnostics")
        end
      end)
    end
  end,
})

-- auto detect csv file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "csv",
  callback = function()
    require("csvview").enable()
  end,
})
