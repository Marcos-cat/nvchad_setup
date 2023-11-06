-- vim.g.vscode_snippets_path = vim.fn.stdpath 'config' .. '/lua/custom/snippets'

function MarkdownHighlightTags()
    vim.cmd 'syntax match MyTag /#[\\x21-\\x7E]\\+/'
end

vim.cmd [[
  autocmd FileType markdown setlocal wrap
  autocmd FileType markdown setlocal linebreak
]]

vim.g.vim_markdown_frontmatter = 1
vim.g.rustfmt_autosave = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.sidescroll = 0

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'
vim.opt.isfname:append '@-@'

vim.opt.updatetime = 50

vim.opt.colorcolumn = '80'
vim.cmd 'set mouse='

vim.opt.clipboard = 'unnamed'

vim.lsp.set_log_level(4)
