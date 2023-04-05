require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

local servers = { "volar","lua_ls"  }

require("mason-lspconfig").setup {
    ensure_installed = servers
}

local lsp_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lsp_status_ok then
  return
end


local on_attach = function(client, bufnr)

  -- if client.server_capabilities.documentHighlightProvider then
  --   vim.api.nvim_create_augroup("lsp_document_highlight", { clear = true })
  --   vim.api.nvim_clear_autocmds { buffer = bufnr, group = "lsp_document_highlight" }
  --   vim.api.nvim_create_autocmd("CursorHold", {
  --     callback = vim.lsp.buf.document_highlight,
  --     buffer = bufnr,
  --     group = "lsp_document_highlight",
  --     desc = "Document Highlight",
  --   })
  --   vim.api.nvim_create_autocmd("CursorMoved", {
  --     callback = vim.lsp.buf.clear_references,
  --     buffer = bufnr,
  --     group = "lsp_document_highlight",
  --     desc = "Clear All the References",
  --   })
  -- end

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local cmp_status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_status_ok then
  return
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    -- root_dir = root_dir,
    capabilities = capabilities,
    flags = {
      -- default in neovim 0.7+
      debounce_text_changes = 150,
    },
    settings = {
      Lua = {
        diagnostics = { globals = {'vim'} }
      }
    }
  }
end
