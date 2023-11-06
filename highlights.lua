local highlights = {}

---@type HLTable
highlights.override = {
    LineNr = {
        fg = 'light_grey',
    },
    CursorLineNr = {
        fg = 'blue',
        bold = true,
    },
    CursorLine = {
        bg = 'lightbg',
    },
    FoldColumn = {
        bg = 'NONE',
        fg = 'grey_fg',
        bold = true,
    },
    MyTag = {
        fg = 'purple',
    },
}

highlights.add = {
    MyTag = {
        fg = 'purple',
    },
}

return highlights
