local M = {}
function M.config()
    local treesitter = require "nvim-treesitter"
    local configs = require "nvim-treesitter.configs"

    configs.setup {
        ensure_installed = {"c", "cpp", "c_sharp", "css", "html", "javascript", "java", "json", "lua", "python", "ruby",
                            "sql", "tsx", "typescript", "vim", "vimdoc", "vue", "xml"},
        ignore_install = {""},
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true
        },
        autopairs = {
            enable = true
        },
        -- autotag = {
        --     enable = true,
        --     enable_rename = true,
        --     enable_close = true,
        --     enable_close_on_slash = true
        -- },
        indent = {
            enable = true
        },
        query_linter = {
            enable = true,
            use_virtual_text = true,
            lint_events = {"BufWrite", "CursorHold"}
        },

        playground = {
            enable = true,
            disable = {},
            updatetime = 25,
            persist_queries = true,
            keybindings = {
                toggle_query_editor = "o",
                toggle_hl_groups = "i",
                toggle_injected_languages = "t",
                toggle_anonymous_nodes = "a",
                toggle_language_display = "I",
                focus_language = "f",
                unfocus_language = "F",
                update = "R",
                goto_node = "<cr>",
                show_help = "?"
            }
        },
        context_commentstring = {
            enable = true,
            enable_autocmd = true
        }
    }
end

return M
