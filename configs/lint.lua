local lint = require 'lint'

lint.linters_by_ft = {
    javascript = { 'eslint_d' },
    typescript = { 'eslint_d' },
    python = { 'mypy', 'ruff' },
    lua = { 'luacheck' },
}

lint.linters['luacheck'].args =
    { '--ignore', 'vim', '--codes', '--ranges', '-' }

vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave', 'TextChanged' }, {
    callback = function()
        lint.try_lint()
    end,
})
