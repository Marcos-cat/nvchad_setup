---@type LazySpec[]
local Plugins = {
    {
        'gelguy/wilder.nvim',
        config = function()
            require 'custom.configs.wilder'
        end,
        dependencies = { 'romgrk/fzy-lua-native' },
        event = 'CmdlineEnter',
    },
    {
        'mfussenegger/nvim-lint',
        config = function()
            require 'custom.configs.lint'
        end,
        ft = require 'custom.used_filetypes',
    },
    {
        'nvim-tree/nvim-web-devicons',
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
        'nvimdev/guard.nvim',
        dependencies = 'nvimdev/guard-collection',
        config = function()
            require 'custom.configs.guard'
        end,
        cmd = 'GuardFmt',
    },
    {
        'saecki/crates.nvim',
        ft = { 'rust', 'toml' },
        dependencies = 'hrsh7th/nvim-cmp',
        config = function(_, opts)
            local crates = require 'crates'
            crates.setup(opts)
            crates.show()
        end,
    },
    {
        'hrsh7th/nvim-cmp',
        opts = function()
            local M = require 'plugins.configs.cmp'
            table.insert(M.sources, { name = 'crates' })
            return M
        end,
    },
    {
        'CRAG666/code_runner.nvim',
        config = function()
            require 'custom.configs.code_runner'
        end,
        cmd = { 'RunCode', 'RunFile', 'RunProject' },
    },
    {
        'samodostal/image.nvim',
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
        'windwp/nvim-ts-autotag',
        config = function()
            require('nvim-ts-autotag').setup()
        end,
        ft = { 'svelte', 'html', 'xml' },
    },
    {
        'christoomey/vim-tmux-navigator',
        cmd = {
            'TmuxNavigateUp',
            'TmuxNavigateDown',
            'TmuxNavigateLeft',
            'TmuxNavigateRight',
        },
    },
    {
        'kevinhwang91/nvim-ufo',
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
        'neovim/nvim-lspconfig',
        config = function()
            require 'plugins.configs.lspconfig'
            require 'custom.configs.lspconfig'
        end, -- Override to setup mason-lspconfig
    },
    {
        'nvim-treesitter/nvim-treesitter',
        opts = require 'custom.configs.treesitter',
        init = function()
            require('nvim-treesitter.install').prefer_git = true
        end,
    },
    {
        'max397574/better-escape.nvim',
        event = 'InsertEnter',
        opts = {},
    },
    {
        'otavioschwanck/cool-substitute.nvim',
        opts = { setup_keybindings = true },
        event = 'BufEnter',
    },
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
