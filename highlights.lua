local highlights = {}

highlights.override = {
    LineNr = {
        fg = 'grey',
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

highlights.add = {
    FlashLabel = { bg = 'NONE', fg = 'white', bold = true },

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

    TabLineFill = { bg = 'NONE' },
    HarpoonActive = { bold = true },
    HarpoonNumberActive = { bold = true, fg = 'blue' },
    HarpoonNumberInactive = { bold = true, fg = 'blue' },
}

return highlights
