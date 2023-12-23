local mappings = {}

local function cmd(str) ---@param str string
    return '<cmd> ' .. str .. '<CR>'
end

mappings.disabled = { n = { ['<leader>pt'] = '', ['<leader>ph'] = '' } }

mappings.general = {
    n = {
        ['<leader>sa'] = { ':w <CR>', 'Save' },
        ['<BS>'] = { cmd 'e #', 'Previous Buffer' },
        ['g>'] = { '<C-a>', 'Increment' },
        ['g<'] = { '<C-x>', 'Decrement' },
        ['<leader>ra'] = { ':IncRename ', 'Rename' },
    },
}

mappings.flash = {
    n = {
        ['s'] = {
            function()
                require('flash').jump()
            end,
            'Flash',
        },
    },
}

mappings.trouble = {
    n = {
        ['<leader>q'] = { cmd 'Trouble', 'Open Trouble' },
        ['gr'] = { cmd 'Trouble lsp_references', 'Lsp References' },
        ['gd'] = { cmd 'Trouble lsp_definitions', 'Lsp Definitions' },
    },
}

mappings.traverse = {
    n = { ['<CR>'] = { cmd 'Traverse', 'Traverse Links' } },
}

local function nav(id)
    return function()
        require('harpoon.ui').nav_file(id)
    end
end

mappings.harpoon = {
    n = {
        ['<tab>'] = { cmd 'HarpoonNext', 'Next Mark' },
        ['<S-tab>'] = { cmd 'HarpoonPrev', 'Previous Mark' },
        ['<leader>a'] = { cmd 'HarpoonAdd', 'Add Mark' },
        ['<leader>A'] = { cmd 'HarpoonToggle', 'Harpoon Menu' },
        ['<F1>'] = { nav(1), 'Go to file 1' },
        ['<F2>'] = { nav(2), 'Go to file 2' },
        ['<F3>'] = { nav(4), 'Go to file 3' },
        ['<F4>'] = { nav(5), 'Go to file 4' },
    },
}

mappings.zen_mode = {
    n = { ['<leader>zn'] = { cmd 'ZenMode', 'Zen Mode' } },
}

mappings.code_runner = {
    n = { ['<leader>ru'] = { cmd 'RunCode', 'Run file' } },
}

mappings.undotree = {
    n = { ['<leader>u'] = { cmd 'UndotreeToggle', 'Undo Tree' } },
}

mappings.conform = {
    n = {
        ['<leader>fm'] = {
            function()
                require('conform').format()
            end,
            'Format code',
        },
    },
}

mappings.icon_picker = {
    n = {
        ['<leader>ei'] = { cmd 'IconPickerNormal', 'Insert Emoji' },
        ['<leader>ey'] = { cmd 'IconPickerYank', 'Insert Emoji' },
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

mappings.lazygit = {
    n = { ['<leader>lz'] = { cmd 'LazyGit', 'Open Lazygit' } },
}

mappings.primeagen = {
    n = {
        ['x'] = { '"_x' },
        ['<leader>d'] = { '"_d', 'Delete without yanking' },
        ['<leader>c'] = { '"_c', 'Change without yanking' },

        ['d'] = { '""d' },
        ['c'] = { '""c' },
        ['p'] = { '""p' },
        ['P'] = { '""P' },
        ['y'] = { '""y' },

        ['<leader>p'] = { '"+p', 'Clipboard paste' },
        ['<leader>P'] = { '"+P', 'Clipboard paste' },
        ['<leader>y'] = { '"+y', 'Clipboard yank' },

        ['J'] = { 'mzJ`z', 'Append the following line to the current line' },
        ['Q'] = { '<nop>', 'Disable the horrors of Q' },
    },
    x = {
        ['<leader>y'] = { '"+y', 'Clipboard yank' },
        ['y'] = { '""y' },
        ['<leader>p'] = { '"_dP', 'Paste over a highlighted word' },
    },
    v = {
        ['d'] = { '""d' },
        ['c'] = { '""c' },
        ['p'] = { '""p' },
        ['P'] = { '""P' },
        ['y'] = { '""y' },

        ['<leader>p'] = { '"+p', 'Clipboard paste' },
        ['<leader>y'] = { '"+y', 'Clipboard yank' },
        ['<leader>d'] = { '"_d', 'Delete without yanking' },
        ['<leader>c'] = { '"_c', 'Change without yanking' },

        ['J'] = { ":m '>+1<CR>gv=gv", 'Move selected lines down' },
        ['K'] = { ":m '<-2<CR>gv=gv", 'Move selected lines up' },
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
        ['<C-h>'] = { cmd 'TmuxNavigateLeft', 'Tmux left' },
        ['<C-j>'] = { cmd 'TmuxNavigateUp', 'Tmux up' },
        ['<C-k>'] = { cmd 'TmuxNavigateDown', 'Tmux down' },
        ['<C-l>'] = { cmd 'TmuxNavigateRight', 'Tmux right' },
    },
}

return mappings
