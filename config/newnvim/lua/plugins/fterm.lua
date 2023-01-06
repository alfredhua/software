require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

vim.keymap.set('n', 'tt', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', 'tt', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
