local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
	vim.notify("impatient paketi yüklenemedi", "ERROR")
  return
end

impatient.enable_profile()
