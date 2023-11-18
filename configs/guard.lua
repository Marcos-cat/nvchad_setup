local ft = require 'guard.filetype'

local path = '/home/marcospotato/.config/'

local prettier_config = path .. 'prettier/.prettierrc'
local clang_config = path .. 'clang/.clang-format'
local stylua_config = path .. 'stylua/.stylua.toml'

local prettier = {
    cmd = 'prettier',
    args = { '--config', prettier_config, '--stdin-filepath' },
    fname = true,
    stdin = true,
}

local svelte_prettier = {
    cmd = 'prettier',
    args = { '--stdin-filepath' },
    fname = true,
    stdin = true,
}

local ocamlformat = {
    cmd = 'ocamlformat',
    args = { '-', '--name' },
    stdin = true,
    fname = true,
}

local clangformat = {
    cmd = 'clang-format',
    args = { '-style=file:' .. clang_config },
    stdin = true,
}

local stylua = {
    cmd = 'stylua',
    args = { '-f', stylua_config, '-' },
    stdin = true,
}

-- Assuming you have guard-collection
ft('c,cpp,java'):fmt(clangformat)
ft('lua'):fmt(stylua)
ft('go'):fmt 'gofmt'
ft('typescript,css,html,json,jsonc,javascript'):fmt(prettier)
ft('svelte'):fmt(svelte_prettier)
ft('python'):fmt 'black'
ft('rust'):fmt 'rustfmt'
ft('bash,sh'):fmt 'shfmt'
ft('ocaml'):fmt(ocamlformat)

local opts = { fmt_on_save = false }

require('guard').setup(opts)
