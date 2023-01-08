
return {
  on_setup = function(server)
    server.setup({
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
        },
      },
      -- capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
      flags = {
        debounce_text_changes = 150,
      },
      on_attach = function(client, bufnr)
        -- 禁用格式化功能，交给专门插件插件处理
        client.server_capabilities.document_formatting = false
        client.server_capabilities.document_range_formatting = false
				vim.o.conceallevel=0  --主题会导致“不显示
        -- 绑定快捷键
        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
      end,
    })
  end,
}


