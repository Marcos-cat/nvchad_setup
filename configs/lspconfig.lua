local on_attach = require('plugins.configs.lspconfig').on_attach
local capabilities = require('plugins.configs.lspconfig').capabilities

local lspconfig = require 'lspconfig'
local util = require 'lspconfig/util'

-- if you just want default config for the servers then put them in a table
local servers = {
    'bashls',
    'gopls',
    'pyright',
    'jdtls',
    'html',
    'cssls',
    'svelte',
    'tsserver',
    'ocamllsp',
    'taplo',
    'emmet_language_server',
    'htmx',
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end

lspconfig.ltex.setup {
    on_attach = on_attach,
    capabilities = capabilities,

    settings = {
        ltex = {
            completionEnabled = true,
            dictionary = {
                ['en-US'] = { 'Uiua' },
            },
        },
    },
}

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { 'rustup', 'run', 'stable', 'rust-analyzer' },
    filetypes = { 'rust' },
    root_dir = util.root_pattern 'Cargo.toml',
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
        },
    },
}

lspconfig.clangd.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
        on_attach(client, bufnr)
    end,
    capabilities = capabilities,
    filetypes = { 'c', 'cpp' },
}

lspconfig.jsonls.setup {
    on_attach = on_attach,
    capabilities = capabilities,

    settings = {
        json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
        },
    },
    filetypes = { 'json' },
}
