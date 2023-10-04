local ft = require 'guard.filetype'

local config_path = '/home/marcospotato/.config/prettier/.prettierrc'

local prettierfmt = {
    cmd = 'prettier',
    args = { '--config', config_path, '--stdin-filepath' },
    fname = true,
    stdin = true,
}

local ocamlformat = {
    cmd = 'ocamlformat',
    args = { '-', '--name' },
    stdin = true,
    fname = true,
}

-- Assuming you have guard-collection
ft('c,cpp,java'):fmt 'clang-format'
ft('lua'):fmt 'stylua'
ft('go'):fmt 'gofmt'
ft('typescript,css,html,markdown,json,javascript,svelte'):fmt(prettierfmt)
ft('python'):fmt 'black'
ft('rust'):fmt 'rustfmt'
ft('bash'):fmt 'shfmt'
ft('ocaml'):fmt(ocamlformat)

-- Call setup() LAST!
require('guard').setup {
    -- the only options for the setup function
    fmt_on_save = false,
    lsp_as_default_formatter = false,
}
