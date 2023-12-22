local lint = require 'lint'

lint.linters_by_ft = {
    python = { 'mypy', 'ruff' },
    lua = { 'luacheck' },
    cpp = { 'cpplint' },
}

-- Appends the table
for i, arg in ipairs { '--ignore', 'vim' } do
    table.insert(lint.linters['luacheck'].args, i, arg)
end

vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave', 'TextChanged' }, {
    callback = function()
        lint.try_lint()
    end,
})
