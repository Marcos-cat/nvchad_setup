require('lint').linters_by_ft = {
    javascript = { 'deno' },
    typescript = { 'deno' },
    python = { 'mypy' },
}

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    callback = function()
        require('lint').try_lint()
    end,
})
