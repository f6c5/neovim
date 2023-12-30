local M = {}
function M.config()
    local treesitter = require "nvim-treesitter"
    local configs = require "nvim-treesitter.configs"

    configs.setup {
        ensure_installed = {"help","c","cpp", "c_sharp","css","html","javascript","java","json", "lua","python","ruby","sql","tsx","typescript", "vim", "vimdoc","vue", "xml"},
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
