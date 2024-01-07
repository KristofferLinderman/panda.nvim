local map = vim.api.nvim_set_keymap

map('i', 'kj', '<ESC>', {})

map('n', '<leader>w', ':w <CR>', {})
map('n', '<leader>d', ':t. <CR>', {})

map('n', '<s-j>', '+', {})
map('n', '<s-k>', '-', {})

map('n', '<leader>e', ':NvimTreeToggle <CR>', {})
