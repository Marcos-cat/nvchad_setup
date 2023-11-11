local M = {
    filetype = {
        typescript = 'bun run',
        javascript = 'bun run',
        python = 'python3 -u',
        go = { 'go run .' },

        rust = function()
            vim.cmd [[Cargo run]]
        end,

        java = {
            'cd $dir &&',
            'javac $fileName &&',
            'java $fileNameWithoutExt',
        },
    },
}

return M
