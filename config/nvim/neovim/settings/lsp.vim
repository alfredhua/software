" lua << EOF
" require'lspconfig'.pyright.setup{}

" local capabilities = vim.lsp.protocol.make_client_capabilities()
" capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

" local lspconfig = require('lspconfig')

" -- Automatically start coq
" vim.g.coq_settings = { auto_start = true }

" -- Enable some language servers with the additional completion capabilities offered by nvim-cmp
" local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
" for _, lsp in ipairs(servers) do
"   lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
"     -- on_attach = my_custom_on_attach,
"   }))
" end

" -- nvim-cmp setup
" local cmp = require 'cmp'
" cmp.setup {
"   snippet = {
"     expand = function(args)
"       require('luasnip').lsp_expand(args.body)
"     end,
"   },
"   mapping = {
"     ['<C-p>'] = cmp.mapping.select_prev_item(),
"     ['<C-n>'] = cmp.mapping.select_next_item(),
"     ['<C-d>'] = cmp.mapping.scroll_docs(-4),
"     ['<C-f>'] = cmp.mapping.scroll_docs(4),
"     ['<C-Space>'] = cmp.mapping.complete(),
"     ['<C-e>'] = cmp.mapping.close(),
"     ['<CR>'] = cmp.mapping.confirm {
"       behavior = cmp.ConfirmBehavior.Replace,
"       select = true,
"     },
"     ['<Tab>'] = function(fallback)
"       if cmp.visible() then
"         cmp.select_next_item()
"       elseif luasnip.expand_or_jumpable() then
"         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-expand-or-jump', true, true, true), '')
"       else
"         fallback()
"       end
"     end,
"     ['<S-Tab>'] = function(fallback)
"       if cmp.visible() then
"         cmp.select_prev_item()
"       elseif luasnip.jumpable(-1) then
"         vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>luasnip-jump-prev', true, true, true), '')
"       else
"         fallback()
"       end
"     end,
"   },
"   sources = {
"     { name = 'nvim_lsp' },
"   },
" }
" EOF
