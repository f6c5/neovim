local status_ok, codeium = pcall(require, "codeium")
if not status_ok then
  vim.notify("codeium paketi yüklenemedi", "ERROR")
  return
end

codeium.setup()
