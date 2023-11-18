local mappings = {}

mappings.general = {
    n = {
        ['<leader>re'] = { ':%s/', 'File-wide search & replace' },
        ['<leader>sa'] = { ':w <CR>', 'Save' },
        ['<leader>Q'] = { '<cmd> quitall <CR>', 'Close Vim' },
    },
}

mappings.zen_mode = {
    n = { ['<leader>zn'] = { '<cmd> ZenMode <CR>', 'Zen Mode' } },
}

mappings.code_runner = {
    n = { ['<leader>ru'] = { '<cmd> RunCode <CR>', 'Run file' } },
}

mappings.undotree = {
    n = { ['<leader>u'] = { '<cmd> UndotreeToggle <CR>', 'Undo Tree' } },
}

mappings.guard = {
    n = { ['<leader>fm'] = { '<cmd> GuardFmt <CR>', 'Format code' } },
}

mappings.aerial = {
    n = {
        ['\\'] = { '<cmd> AerialNavToggle <CR>', 'Open Aerial Floating' },
        ['|'] = { '<cmd> AerialToggle <CR>', 'Open Aerial Sidebar' },
        ['<leader>fs'] = { '<cmd> Telescope aerial <CR>', 'Telescope Aerial' },
    },
}

mappings.icon_picker = {
    n = {
        ['<leader>ei'] = { '<cmd> IconPickerNormal <CR>', 'Insert Emoji' },
        ['<leader>ey'] = { '<cmd> IconPickerYank <CR>', 'Insert Emoji' },
    },
}

mappings.oil = {
    n = {
        ['-'] = {
            function()
                require('oil').open_float()
            end,
            'Open Oil',
        },
    },
}

mappings.snek_case = {
    n = {
        ['<leader>sn'] = { '<cmd> Snek <CR>', 'Snake Case' },
        ['<leader>sc'] = { '<cmd> Camel <CR>', 'Camel Case' },
        ['<leader>sb'] = { '<cmd> CamelB <CR>', 'Camel Case' },
    },
}

mappings.lazygit = {
    n = { ['<leader>lz'] = { '<cmd> LazyGit <CR>', 'Open Lazygit' } },
}

mappings.primeagen = {
    n = {
        ['x'] = { '"_x' },

        ['d'] = { '""d' },
        ['c'] = { '""c' },
        ['<leader>d'] = { '"_d', 'Delete without yanking' },
        ['<leader>c'] = { '"_c', 'Change without yanking' },

        ['p'] = { '""p' },
        ['y'] = { '""y' },
        ['<leader>p'] = { '"+p', 'Clipboard paste' },
        ['<leader>y'] = { '"+y', 'Clipboard yank' },

        ['J'] = { 'mzJ`z', 'Append the following line to the current line' },
        ['<C-d>'] = { '<C-d>zz', 'Move a half page down' },
        ['<C-u>'] = { '<C-u>zz', 'Move a half page up' },
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

return mappings
