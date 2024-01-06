local colorscheme = "dracula"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify(colorscheme .. " paketi yüklenemedi", "ERROR")
  return
end
