---@type LazySpec[]
local Plugins = {
    { 'folke/flash.nvim', event = 'VeryLazy', opts = {} },
    { 'folke/trouble.nvim', opts = {}, cmd = 'Trouble' },
    {
        'stevearc/conform.nvim',
        config = function()
            require 'custom.configs.conform'
        end,
    },
    {
        -- 'Marcos-cat/traverse.nvim',
        dir = '/home/marcospotato/Documents/lua_plugin/traverse.nvim',
        opts = {},
        cmd = 'Traverse',
    },
    {
        'ThePrimeagen/harpoon',
        config = function()
            require 'custom.configs.harpoon'
        end,
        cmd = { 'HarpoonNext', 'HarpoonPrev', 'HarpoonAdd', 'HarpoonToggle' },
    },
    {
        'folke/zen-mode.nvim',
        opts = require 'custom.configs.zenmode',
        dependencies = { 'folke/twilight.nvim', opts = {} },
        cmd = 'ZenMode',
    },
    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        opts = require 'custom.configs.noice',
        dependencies = {
            'MunifTanjim/nui.nvim',
            { 'smjonas/inc-rename.nvim', opts = {} },
            { 'rcarriga/nvim-notify', opts = require 'custom.configs.nofity' },
        },
    },
    {
        'ziontee113/icon-picker.nvim',
        opts = { disable_legacy_commands = true },
        dependencies = { 'stevearc/dressing.nvim' },
        cmd = { 'IconPickerInsert', 'IconPickerNormal', 'IconPickerYank' },
    },
    {
        'stevearc/oil.nvim', -- Adds an editable file viewer with - (dash)
        opts = require 'custom.configs.oil',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        cmd = 'Oil',
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
        init = function()
            require 'custom.configs.luasnip'
        end,
    },
    {
        'CRAG666/code_runner.nvim', -- Runs the current file in a differnt buffer
        opts = require 'custom.configs.coderunner',
        cmd = { 'RunCode', 'RunFile', 'RunProject' },
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
        event = 'VeryLazy',
        opts = {
            provider_selector = function()
                return { 'treesitter', 'indent' }
            end,
        },
    },
    {
        'neovim/nvim-lspconfig', -- Configures LSPs
        dependencies = {
            'stevearc/dressing.nvim',
            { 'folke/neodev.nvim', opts = {} },
            {
                'onsails/lspkind.nvim',
                opts = { symbol_map = require 'custom.configs.lspsymbols' },
                config = function(_, opts)
                    require('lspkind').init(opts)
                end,
            },
        },
        config = function()
            require 'plugins.configs.lspconfig'
            require 'custom.configs.lspconfig'
        end, -- Override to setup mason-lspconfig
    },
    {
        'nvim-treesitter/nvim-treesitter', -- Enables good synatax highlighting for many languages
        opts = require 'custom.configs.treesitter',
        -- init = require('custom.configs.treesitter').init,
    },
    { 'fladson/vim-kitty', ft = 'kitty' },
    { 'rust-lang/rust.vim', ft = 'rust' },
    { 'b0o/schemastore.nvim', ft = 'json' },
    { 'tpope/vim-surround', event = 'VeryLazy' },
    { 'tpope/vim-commentary', event = 'VeryLazy' },
    { 'kdheepak/lazygit.nvim', cmd = 'LazyGit' },
    { 'mbbill/undotree', cmd = 'UndotreeToggle' },
    { 'williamboman/mason.nvim', opts = require 'custom.configs.mason' },
    { 'nvim-tree/nvim-tree.lua', enabled = false },
}

return Plugins
