local status_ok, npairs = pcall(require, "nvim-autopairs")
if not status_ok then
	vim.notify("autopairs paketi yüklenemedi", "ERROR")
  return
end

npairs.setup {
  check_ts = true,
  ts_config = {
    lua = { "string", "source" },
    javascript = { "string", "template_string" },
    java = false,
  },
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0,
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "PmenuSel",
    highlight_grey = "LineNr",
  },
}

local cmp_autopairs = require "nvim-autopairs.completion.cmp"
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done { map_char = { tex = "" } })

-- JSX için otomatik etiket kapanışını ekleyelim
local Rule = require('nvim-autopairs.rule')
npairs.add_rules {
  Rule('>', '</>')
    :with_pair(function() return false end)
    :with_move(function(opts)
        return opts.prev_char:match('.>%') ~= nil
    end)
    :use_key('</>')
    :set_end_pair_length(2)
}
