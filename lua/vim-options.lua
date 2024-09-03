vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set clipboard=unnamedplus")
vim.g.mapleader = " "

vim.opt.fillchars = { eob = " "}
vim.api.nvim_create_user_command('Format', 'normal! gg=G', {})

-- Activamos los numeros de las lineas --

vim.wo.number = true


vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>t', ':term<CR>', { noremap = true, silent = true })


