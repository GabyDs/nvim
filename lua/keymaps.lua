-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

-- Disable cursor keys
map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

-- Move in insert mode
map('i', '<C-h>', '<Left>', default_opts)
map('i', '<C-j>', '<Down>', default_opts)
map('i', '<C-k>', '<Up>', default_opts)
map('i', '<C-l>', '<Right>', default_opts)

-- map Esc to kk
map('i', 'kk', '<Esc>', {noremap = true})

-- fast saving with <leader> and w
map('n', '<leader>w', ':w<CR>', default_opts)

-- fast source with <leader> and s
map('n', '<leader>s', ':source<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Neotree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)
map('n', '<C-f>', ':Neotree focus<CR>', default_opts)
