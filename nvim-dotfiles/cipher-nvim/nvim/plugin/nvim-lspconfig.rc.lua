local status, lspconfig = pcall(require, 'lspconfig')
if (not status) then return end

local opts = { noremap = true, silent = true }
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(client, bufnr)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
end

lspconfig.lua_ls.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

lspconfig.pyright.setup{
  on_attach = on_attach,
  capabilities = capabilities
}
