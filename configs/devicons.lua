local M = {}

local c = {
    white = '#cdd6f4',
    yellow = '#f9e2af',
    gray = '#666666',
}

M = {
    color_icons = true,
    strict = true,

    override_by_filename = {
        ['.gitignore'] = {
            icon = '',
            color = c.gray,
            name = 'Gitignore',
        },
        ['.bashrc'] = {
            icon = '',
            color = c.gray,
            name = 'Bashrc',
        },
    },

    override_by_extension = {
        ['ml'] = {
            icon = '',
            color = c.yellow,
            name = 'Ocaml',
        },
        ['txt'] = {
            icon = '',
            color = c.white,
            name = 'Text',
        },
    },
}

return M
