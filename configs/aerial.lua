local M = {
    filter_kind = {
        'Class',
        'Constructor',
        'Enum',
        'Function',
        'Interface',
        'Module',
        'Method',
        'Struct',
    },

    autojump = true,
    backends = { lua = { 'lsp' } },
}

return M
