require "plugins.options"
require "plugins.keymaps"
require "plugins.colorscheme"
require "plugins.bufferline"
require "plugins.autocommands"
require "plugins.plugins"
require "plugins.notify"
require "plugins.cmp"
require "plugins.lsp"
require "plugins.telescope"
require "plugins.gitsigns"
require "plugins.treesitter"
require "plugins.autopairs"
require "plugins.comment"
require "plugins.nvim-tree"
require "plugins.lualine"
require "plugins.toggleterm"
require "plugins.project"
require "plugins.impatient"
require "plugins.indent-blankline"
require "plugins.alpha"
require "plugins.whichkey"
require "plugins.autotag"
require "plugins.dressing"
require "plugins.other"


local username = vim.fn.getenv("USERNAME") or "isimsiz"

vim.notify("Hoşgeldiniz " .. username .. "!", "INFO", {
    title = "Fvim"
})

