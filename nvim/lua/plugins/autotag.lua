local status_ok, autotag = pcall(require, "nvim-ts-autotag")
if not status_ok then
	vim.notify("autotag paketi yüklenemedi", "ERROR")
    return
end

autotag.setup()

