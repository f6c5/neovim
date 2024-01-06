local status_ok, fidget = pcall(require, "fidget")
if not status_ok then
	vim.notify("fidget paketi yüklenemedi", "ERROR")
    return
end

fidget.setup()
