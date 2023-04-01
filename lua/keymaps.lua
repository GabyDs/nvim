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
