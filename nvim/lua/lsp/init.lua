local servers = {
  require("lsp.pyright"),
}

for _, server in ipairs(servers) do
  vim.lsp.config(server.name, server.config or {})
  vim.lsp.enable(server.name)
end
