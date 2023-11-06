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
}

---@type HLTable
highlights.add = {
    NotifyERRORBorder = { fg = 'red' },
    NotifyERRORIcon = { fg = 'red' },
    NotifyERRORTitle = { fg = 'red' },
    NotifyWARNBorder = { fg = 'orange' },
    NotifyWARNIcon = { fg = 'orange' },
    NotifyWARNTitle = { fg = 'orange' },
    NotifyINFOBorder = { fg = 'green' },
    NotifyINFOIcon = { fg = 'green' },
    NotifyINFOTitle = { fg = 'green' },
    NotifyTRACEBorder = { fg = 'purple' },
    NotifyTRACEIcon = { fg = 'purple' },
    NotifyTRACETitle = { fg = 'purple' },
    NotifyDEBUGBorder = { fg = 'grey' },
    NotifyDEBUGIcon = { fg = 'grey' },
    NotifyDEBUGTitle = { fg = 'grey' },

    tkTag = { fg = 'purple' },
}

return highlights
