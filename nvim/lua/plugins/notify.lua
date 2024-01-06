local status_ok, notify = pcall(require, "notify")
if not status_ok then
    return
end

notify.setup({
    stages = "fade",

    background_colour = "Normal",

    timeout = 3000,

    minimum_width = 50,

    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = ""
    }
})

vim.notify = require("notify")