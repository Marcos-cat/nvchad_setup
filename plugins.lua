---@type LazySpec[]
local Plugins = {
    {
        'ggandor/leap.nvim', -- You can move to a spot using two letter pairs
        config = function()
            require('leap').add_default_mappings()
        end,
        keys = { 's', 'S' },
    },
    {
        'stevearc/oil.nvim', -- Adds an editable file viewer with - (dash)
        opts = {},
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        cmd = { 'Oil' },
    },
    {
        'gelguy/wilder.nvim', -- Makes cmd mode and search mode have suggestions
        config = function()
            require 'custom.configs.wilder'
        end,
        dependencies = { 'romgrk/fzy-lua-native' },
        event = 'CmdlineEnter',
    },
    {
        'mfussenegger/nvim-lint', -- Adds linting
        config = function()
            require 'custom.configs.lint'
        end,
        ft = require 'custom.used_filetypes',
    },
    {
        'nvim-tree/nvim-web-devicons', -- Adds configurable filetype icons
        opts = function()
            return { override = require 'nvchad.icons.devicons' }
        end,
        config = function(_, opts)
            dofile(vim.g.base46_cache .. 'devicons')
            opts = vim.tbl_deep_extend(
                'force',
                opts,
                require 'custom.configs.devicons'
            )
            require('nvim-web-devicons').setup(opts)
        end,
    },
    {
        'nvimdev/guard.nvim', -- Adds code formatting
        dependencies = 'nvimdev/guard-collection',
        config = function()
            require 'custom.configs.guard'
        end,
        cmd = 'GuardFmt',
    },
    {
        'saecki/crates.nvim', -- Looks up crate versions from github and displays them inline
        ft = { 'rust', 'toml' },
        dependencies = 'hrsh7th/nvim-cmp',
        config = function(_, opts)
            local crates = require 'crates'
            crates.setup(opts)
            crates.show()
        end,
    },
    {
        'hrsh7th/nvim-cmp', -- Adds lsp and snippet autocomplete while typing
        opts = function()
            local M = require 'plugins.configs.cmp'
            table.insert(M.sources, { name = 'crates' })
            return M
        end,
    },
    {
        'CRAG666/code_runner.nvim', -- Runs the current file in a differnt buffer
        config = function()
            require 'custom.configs.code_runner'
        end,
        cmd = { 'RunCode', 'RunFile', 'RunProject' },
    },
    {
        'samodostal/image.nvim', -- Turns images into ASCII art to view in a buffer
        dependencies = {
            'nvim-lua/plenary.nvim',
            'm00qek/baleia.nvim',
        },
        config = function()
            require 'custom.configs.image'
        end,
        event = 'BufEnter',
    },
    {
        'windwp/nvim-ts-autotag', -- Adds a closing tag when writing html
        config = function()
            require('nvim-ts-autotag').setup()
        end,
        ft = { 'svelte', 'html', 'xml' },
    },
    {
        'christoomey/vim-tmux-navigator', -- Maps Ctrl-hjkl to moving windows and tmux panes
        cmd = {
            'TmuxNavigateUp',
            'TmuxNavigateDown',
            'TmuxNavigateLeft',
            'TmuxNavigateRight',
        },
    },
    {
        'kevinhwang91/nvim-ufo', -- Adds folding that looks decent
        dependencies = 'kevinhwang91/promise-async',
        event = { 'BufEnter' },
        config = function()
            require('ufo').setup {
                provider_selector = function()
                    return { 'treesitter', 'indent' }
                end,
            }
        end,
    },
    {
        'neovim/nvim-lspconfig', -- Configures LSPs
        config = function()
            require 'plugins.configs.lspconfig'
            require 'custom.configs.lspconfig'
        end, -- Override to setup mason-lspconfig
    },
    {
        'nvim-treesitter/nvim-treesitter', -- Enables good synatax highlighting for many languages
        opts = require 'custom.configs.treesitter',
        init = function()
            require('nvim-treesitter.install').prefer_git = true
        end,
    },
    {
        'otavioschwanck/cool-substitute.nvim',
        opts = { setup_keybindings = true },
        event = 'BufEnter',
    },
    { 'max397574/better-escape.nvim', event = 'InsertEnter', opts = {} },
    { 'nicwest/vim-camelsnek', cmd = { 'Snek', 'Camel', 'CamelB', 'Screm' } },
    { 'fladson/vim-kitty', ft = 'kitty' },
    { 'rust-lang/rust.vim', ft = 'rust' },
    { 'b0o/schemastore.nvim', ft = 'json' },
    { 'mattn/emmet-vim', ft = { 'html', 'svelte' } },
    { 'tpope/vim-surround', event = { 'BufEnter' } },
    { 'tpope/vim-commentary', event = { 'BufEnter' } },
    { 'tpope/vim-fugitive', cmd = { 'Git' } },
    { 'theprimeagen/harpoon' },
    { 'mbbill/undotree', cmd = { 'UndotreeToggle' } },
    { 'williamboman/mason.nvim', opts = require 'custom.configs.mason' },
    { 'ThePrimeagen/vim-be-good', cmd = { 'VimBeGood' } },
    { 'nvim-tree/nvim-tree.lua', enabled = false },
    { 'jghauser/follow-md-links.nvim' },
}

return Plugins
