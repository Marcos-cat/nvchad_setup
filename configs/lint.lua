local lint = require 'lint'

lint.linters_by_ft = {
    javascript = { 'deno' },
    typescript = { 'deno' },
    python = { 'mypy', 'ruff' },
}

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    callback = function()
        lint.try_lint()
    end,
})
