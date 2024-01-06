local options = {

    backup = false,
    breakindent = true,
    clipboard = {"unnamed", "unnamedplus"},
    cmdheight = 2,
    completeopt = {"menuone", "noselect"},
    conceallevel = 2,
    concealcursor = 'i',
    cursorline = true,
    diffopt = vim.o.diffopt .. ',vertical',
    expandtab = true,
    fileencoding = 'utf-8',
    fillchars = 'vert:│',
    foldenable = false,
    foldmethod = 'indent',
    guifont = "monospace:h17",
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    inccommand = 'nosplit',
    lazyredraw = true,
    linebreak = true,
    list = true,
    listchars = 'tab:│ ,trail:·',
    matchtime = 0,
    mouse = 'a',
    number = true,
    numberwidth = 4,
    pumheight = 10,
    scrolloff = 8,
    shiftround = true,
    shiftwidth = 2,
    showmatch = true,
    showtabline = 2,
    sidescroll = 5,
    sidescrolloff = 8,
    signcolumn = 'yes',
    smartcase = true,
    smartindent = true,
    splitright = true,
    splitbelow = true,
    swapfile = false,
    tabstop = 2,
    tagcase = 'smart',
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    wrap = true,
    writebackup = false
}

vim.cmd('set shortmess+=c')
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

for k, v in pairs(options) do
    vim.opt[k] = v
end
