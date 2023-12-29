local M = {}
function M.config()
    local treesitter = require "nvim-treesitter"
    local configs = require "nvim-treesitter.configs"

    configs.setup {
        ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "javascript", "csharp"},
        ignore_install = {""},
        sync_install = false,
        auto_install = true,

        highlight = {
            enable = true
        },
        autopairs = {
            enable = true
        },
        indent = {
            enable = true
        },

        context_commentstring = {
            enable = true,
            enable_autocmd = false
        }
    }
end

return M
