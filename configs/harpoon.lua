local opts = { tabline = true, tabline_prefix = '   ', tabline_suffix = '  ' }

require('harpoon').setup(opts)

local ui = require 'harpoon.ui'
local mark = require 'harpoon.mark'

local cmds = {
    HarpoonToggle = function()
        ui.toggle_quick_menu()
    end,
    HarpoonNext = function()
        ui.nav_next()
    end,
    HarpoonPrev = function()
        ui.nav_prev()
    end,
    HarpoonAdd = function()
        mark.add_file()
    end,
}

for cmd, func in pairs(cmds) do
    vim.api.nvim_create_user_command(cmd, func, {})
end
