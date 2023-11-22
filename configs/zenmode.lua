local M = {
    plugins = {
        tmux = { enabled = true },
        gitsigns = { enabled = true },
    },
    on_open = function()
        vim.o.laststatus = 0 -- Disable statusline
    end,
    on_close = function()
        vim.o.laststatus = 3 -- Enable statusline
    end,
}

return M
