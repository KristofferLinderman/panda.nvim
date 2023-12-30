local M = {}

M.general = {
  n = {
    ['<leader>w'] = { '<cmd> w <CR>', 'Save file' },
    ['<leader>d'] = { '<cmd> t. <CR>', 'Duplicate line' },
  },
  i = {
    ['kj'] = { '<ESC>', 'Escape key', opts = { nowait = true } },
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    -- toggle
    ['<leader>e'] = { '<cmd> NvimTreeToggle <CR>', 'Toggle nvimtree' },
  },
}

return M
