local config = {}

-- Path to overriding theme and highlights files
local highlights = require 'custom.highlights'

config.ui = {
    statusline = { theme = 'minimal' },
    transparency = false,
    telescope = { style = 'bordered' },
    tabufline = { enabled = false },

    nvdash = {
        header = require('custom.banners').lulu_block,
        load_on_startup = true,
        buttons = {
            { '  Find File', 'Spc f f', 'Telescope find_files' },
            { '󰈚  Recent Files', 'Spc f o', 'Telescope oldfiles' },
            { '󰈭  Find Word', 'Spc f w', 'Telescope live_grep' },
            { '  Bookmarks', 'Spc m a', 'Telescope marks' },
            { '  Themes', 'Spc t h', 'Telescope themes' },
            { '  Mappings', 'Spc c h', 'NvCheatsheet' },
        },
    },

    theme = 'catppuccin',
    theme_toggle = { 'catppuccin', 'one_light' },

    hl_override = highlights.override,
    hl_add = highlights.add,
}

config.plugins = 'custom.plugins'

-- check core.mappings for table structure
config.mappings = require 'custom.mappings'

return config
