local status_ok, chatgpt = pcall(require, "chatgpt")
if not status_ok then
  vim.notify("chatgpt paketi yüklenemedi", "ERROR")
  return
end

local secret_key = vim.fn.getenv('OPENAI_API_KEY')

chatgpt.setup({
  api_key_cmd = secret_key,
})