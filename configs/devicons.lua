local M = {}

local c = {
    white = '#cdd6f4',
    yellow = '#f9e2af',
}

M = {
    color_icons = true,
    strict = true,

    override_by_extension = {
        ['ml'] = {
            icon = '',
            color = c.yellow,
            name = 'Ocaml',
        },
        ['txt'] = {
            icon = '󰈙',
            color = c.white,
            name = 'Text',
        },
    },
}

return M
