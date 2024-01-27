local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local hover = null_ls.builtins.hover

null_ls.setup({
  debug = true,
  sources = {
    formatting.prettier.with({
      filetypes = {
        "html", "css", "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json",
        "jsonc"
      },
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" }
    }),
    completion.spell,
    hover.dictionary
  }
})

local eslint = diagnostics.eslint.with({
  linters = { "eslint-plugin-vue", "eslint-plugin-typescript" },
  filetypes = { "javascript", "javascriptreact" },
})

null_ls.register(eslint)
