local M = {
    ensure_installed = {
        -- Formatters
        'stylua',
        'prettier',
        'clang-format',
        'black',
        'shfmt',
        -- Do a pip install if not installed
        -- 'mdformat',

        -- Language Servers
        'vim-language-server',
        'lua-language-server',
        'ltex-ls',
        'css-lsp',
        'html-lsp',
        'htmx-lsp',
        'typescript-language-server',
        'svelte-language-server',
        'bash-language-server',
        'jdtls',
        'pyright',
        'json-lsp',
        'clangd',
        'gopls',
        'ocaml-lsp',
        'taplo',
        'emmet-language-server',

        -- Linters
        'mypy',
        'ruff',
        'luacheck',
    },
}

return M
