local highlights = {}

---@type HLTable
highlights.override = {
    Comment = {
        italic = true,
    },
    kittyComment = {
        italic = true,
    },
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
}

return highlights
