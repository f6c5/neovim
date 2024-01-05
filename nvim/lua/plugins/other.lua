local notify_ok, notify = pcall(require, "nvim-notify")
if not notify_ok then
    return
end

notify.setup()

local fidget_ok, fidget = pcall(require, "fidget")
if not fidget_ok then
    return
end

fidget.setup()

