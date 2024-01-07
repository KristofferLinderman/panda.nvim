require('custom/keymappings')

vim.opt.relativenumber = true
vim.opt.so = 10

-- Enable highlight for yanking
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank({higroup="IncSearch", timeout=200})
  augroup END
]],
  false
)

