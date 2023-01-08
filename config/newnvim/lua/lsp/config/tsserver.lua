return {
  on_setup = function(server)
		server.setup({ 
			capabilities = require('cmp_nvim_lsp').default_capabilities(),
      on_attach = function(client, bufnr)
				client.server_capabilities.document_formatting = false
				client.server_capabilities.document_range_formatting = false
			end
		})
  end,
}



