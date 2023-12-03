local conform = require 'conform'

local opts = {
    formatters_by_ft = {
        lua = { 'stylua' },
        rust = { 'rustfmt' },
        python = { 'black' },
        go = { 'gofmt' },
        svelte = { 'svelteprettier' },

        javascript = { 'prettier' },
        typescript = { 'prettier' },
        json = { 'prettier' },
        jsonc = { 'prettier' },
        html = { 'prettier' },
        css = { 'prettier' },

        bash = { 'shfmt' },
        sh = { 'shfmt' },

        java = { 'clang_format' },
        cpp = { 'clang_format' },
        c = { 'clang_format' },
    },
}

local util = require 'conform.util'

conform.formatters.svelteprettier = {
    command = 'prettier',
    args = { '--stdin-filepath', '$FILENAME' },
    range_args = function(ctx)
        local start_offset, end_offset =
            util.get_offsets_from_range(ctx.buf, ctx.range)
        return {
            '$FILENAME',
            '--range-start=' .. start_offset,
            '--range-end=' .. end_offset,
        }
    end,
}

local path = '/home/marcospotato/.config/'

local pre_args = {
    stylua = { '-f', path .. 'stylua/.stylua.toml' },
    prettier = { '--config', path .. 'prettier/.prettierrc' },
    clang_format = { '-style=file:' .. path .. 'clang/.clang-format' },
}

for formatter, args in pairs(pre_args) do
    conform.formatters[formatter] = { prepend_args = args }
end

conform.setup(opts)
