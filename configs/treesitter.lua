local parser_config = require('nvim-treesitter.parsers').get_parser_configs()

vim.api.nvim_create_autocmd('FileType', {
    pattern = "uiua",
    once = true,
    callback = function()
        parser_config.uiua = {
            install_info = {
                url = 'https://github.com/shnarazk/tree-sitter-uiua',
                files = { 'src/parser.c' },
                branch = 'main',
                generate_requires_npm = false,
                requires_generate_from_grammar = false,
            },
            filetype = 'uiua', -- if filetype does not match the parser name
        }
    end,
})

local M = {
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
    indent = { enable = true },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'markdown' },
    },
}

return M
