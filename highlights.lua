local highlights = {}

---@type HLTable
highlights.override = {
    LineNr = {
        fg = 'blue',
    },
    CursorLineNr = {
        fg = 'green',
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
