local M = {}

M = {
    ensure_installed = {
        'rust',
        'vim',
        'lua',
        'toml',
        'html',
        'css',
        'svelte',
        'javascript',
        'typescript',
        'json',
        'c',
        'cpp',
        'markdown',
        'markdown_inline',
        'latex',
        'java',
        'python',
        'go',
        'bash',
        'ocaml',
    },
    indent = {
        enable = true,
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
    },
}

return M
