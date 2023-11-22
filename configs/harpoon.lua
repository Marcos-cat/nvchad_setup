local M = function()
    vim.api.nvim_create_user_command('Harpoon', function(opts)
        local ui = require 'harpoon.ui'
        local arg = vim.trim(opts.fargs[1])

        if tonumber(arg) ~= nil then
            ui.nav_file(tonumber(arg))
        elseif arg == 'next' then
            ui.nav_next()
        elseif arg == 'prev' then
            ui.nav_prev()
        elseif arg == 'add' then
            require('harpoon.mark').add_file()
        elseif arg == 'toggle' then
            ui.toggle_quick_menu()
        else
            print 'Invalid command'
        end
    end, {
        nargs = 1,
        complete = function()
            return { 'next', 'prev', 'add', 'toggle' }
        end,
    })
end

return M
