local mappings = {}

mappings.general = {
    n = {
        ['<leader>fm'] = { '<cmd> GuardFmt <CR>', 'Format code' },
        ['<leader>ru'] = { '<cmd> RunCode <CR>', 'Run file' },
        ['<leader>re'] = { ':%s/', 'File-wide search & replace' },
        ['<leader>sa'] = { ' :w <CR>', 'Format and Save' },
        ['<leader>u'] = { '<cmd> UndotreeToggle <CR>', 'Undo Tree' },
        ['<leader>Q'] = { ':wa<CR>:qa<CR>', 'Close Vim' },
        ['<leader>tt'] = {
            function()
                require('base46').toggle_transparency()
            end,
            'Toggle Transparency',
        },
    },
}

mappings.git = {
    n = {
        ['<leader>ga'] = { '<cmd> Git add . <CR>', 'Stage all files' },
        ['<leader>gc'] = {
            function()
                local message = vim.fn.input 'Commit message: '

                vim.cmd('Git commit -m "' .. message .. '"')
            end,
            'Commit branch',
        },
        ['<leader>gp'] = {
            '<cmd> Git push <CR>',
            'Push to GitHub',
            { silent = true },
        },
        ['<leader>gf'] = {
            '<cmd> Telescope git_status <CR>',
            'Telescope Git status',
        },
        ['<leader>gt'] = { '<cmd> Git <CR>', 'Open interactive Git menu' },
    },
}

mappings.follow_link = {
    n = {
        ['<CR>'] = {
            function()
                require('follow-md-links').follow_link()
            end,
            'Follow the link',
        },
        ['<BS>'] = {
            '<cmd> edit # <CR>',
            'Go to previous buffer',
            { silent = true },
        },
    },
}

mappings.primeagen = {
    n = {
        ['<leader>p'] = { '"+p', 'Clipboard paste' },
        ['<leader>y'] = { '"+y', 'Clipboard yank' },
        ['J'] = { 'mzJ`z', 'Append the following line to the current line' },
        ['<C-d>'] = { '<C-d>zz', 'Move a half page down' },
        ['<C-u>'] = { '<C-u>zz', 'Move a half page up' },
        ['<leader>d'] = { '"_d', 'Delete without yanking' },
        ['Q'] = { '<nop>', 'Disable the horrors of Q' },
    },
    x = {
        ['<leader>p'] = { '"_dP', 'Paste over a highlighted word' },
    },
    v = {
        ['<leader>p'] = { '"+p', 'Clipboard paste' },
        ['<leader>y'] = { '"+y', 'Clipboard yank' },
        ['J'] = { ":m '>+1<CR>gv=gv", 'Move selected lines down' },
        ['K'] = { ":m '<-2<CR>gv=gv", 'Move selected lines up' },
        ['<leader>d'] = { '"_d', 'Delete without yanking' },
    },
}

mappings.crates = {
    n = {
        ['<leader>rcu'] = {
            function()
                require('crates').upgrade_all_crates()
            end,
            'Update crates',
        },
    },
}

mappings.tmux = {
    n = {
        ['<C-h>'] = { '<cmd> TmuxNavigateLeft <CR>', 'Tmux left' },
        ['<C-j>'] = { '<cmd> TmuxNavigateUp <CR>', 'Tmux up' },
        ['<C-k>'] = { '<cmd> TmuxNavigateDown <CR>', 'Tmux down' },
        ['<C-l>'] = { '<cmd> TmuxNavigateRight <CR>', 'Tmux right' },
    },
}

local function nav_file(n)
    return function()
        require('harpoon.ui').nav_file(n)
    end
end

mappings.harpoon = {
    n = {
        ['<leader>a'] = {
            function()
                require('harpoon.mark').add_file()
            end,
            'Add file Harpoon',
        },
        ['<C-e>'] = {
            function()
                require('harpoon.ui').toggle_quick_menu()
            end,
            'File menu Harpoon',
        },
        ['<leader>h'] = { nav_file(1), 'Harpoon 1' },
        ['<leader>j'] = { nav_file(2), 'Harpoon 2' },
        ['<leader>k'] = { nav_file(3), 'Harpoon 3' },
        ['<leader>l'] = { nav_file(4), 'Harpoon 4' },
    },
}

return mappings
