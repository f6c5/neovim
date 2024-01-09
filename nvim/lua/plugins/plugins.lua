local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
    install_path })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({
        border = "rounded"
      })
    end
  }
})

-- Install your plugins here
return packer.startup(function(use)
  use { "wbthomason/packer.nvim" }

  use { "nvim-lua/plenary.nvim" }
  use { "nvim-lua/popup.nvim" }
  use { "MunifTanjim/nui.nvim" }
  use { "rcarriga/nvim-notify" }
  use { "windwp/nvim-autopairs" }
  use { 'windwp/nvim-ts-autotag' }
  use { "numToStr/Comment.nvim" }
  use { "JoosepAlviste/nvim-ts-context-commentstring" }
  use { "nvim-tree/nvim-web-devicons" }
  use { "nvim-tree/nvim-tree.lua" }
  use { "akinsho/bufferline.nvim" }
  use { "moll/vim-bbye" }
  use { "nvim-lualine/lualine.nvim" }
  use { "akinsho/toggleterm.nvim" }
  use { "ahmedkhalf/project.nvim" }
  use { "lewis6991/impatient.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "goolord/alpha-nvim" }
  use { "folke/which-key.nvim" }
  use { "folke/noice.nvim" }
  use {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end
  }
  use { 'stevearc/dressing.nvim' }
  use { 'folke/neodev.nvim' }
  use { "ap/vim-css-color" }

  use { "maxmellon/vim-jsx-pretty" }
  use { "yuezk/vim-js" }
  use { "j-hui/fidget.nvim" }

  -- Colorschemes
  use { 'Mofiqul/dracula.nvim' }

  -- Cmp
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "saadparwaiz1/cmp_luasnip" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }

  -- Snippets
  use {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" }
  }

  -- simple to use language server installer
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }

  -- LSP
  use { "neovim/nvim-lspconfig" }
  use { "jose-elias-alvarez/null-ls.nvim" }
  use { "RRethy/vim-illuminate" }

  -- Telescope
  use { "nvim-telescope/telescope.nvim" }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  }
  use { 'axelvc/template-string.nvim' }

  -- Git
  use { "lewis6991/gitsigns.nvim" }

  --chatGpt
  -- use { "jackMort/ChatGPT.nvim" }

  --codeium
  use {
    'Exafunction/codeium.vim',
    config = function()
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
