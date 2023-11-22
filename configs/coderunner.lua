local M = {
    filetype = {
        typescript = 'bun run',
        javascript = 'bun run',
        python = 'python3 -u',

        uiua = function()
            vim.cmd 'w'
            vim.cmd '!uiua run %'
            vim.cmd 'e!'
        end,

        go = { 'go run .' },

        rust = function()
            vim.cmd 'Cargo run'
        end,

        java = {
            'cd $dir &&',
            'javac $fileName &&',
            'java $fileNameWithoutExt',
        },
    },
}

return M
