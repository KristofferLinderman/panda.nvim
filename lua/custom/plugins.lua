local plugins = {
  {
    'neovim/nvim-lspconfig',
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,
  },
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        'eslint-lsp',
        'prettierd',
        'typescript-language-server',
        'lua-language-server',
      },
    },
  },
  {
    'nvimtools/none-ls.nvim',
    event = 'VeryLazy',
    opts = function()
      return require 'custom.configs.null-ls'
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function()
      local opts = require 'plugins.configs.treesitter'
      opts.ensure_installed = {
        'lua',
        'javascript',
        'typescript',
        'tsx',
      }
      return opts
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    opts = function()
      require 'plugins.configs.nvimtree'
      require 'custom.configs.nvimtree'
    end,
  },
  {
    'theprimeagen/harpoon',
    branch = 'harpoon2',
    lazy = false,
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('custom.configs.harpoon').setup()
    end,
    keys = require('custom.configs.harpoon').keys,
  },
}

return plugins
