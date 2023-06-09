-- Neovim API aliases

local cmd = vim.cmd
local exec = vim.api.nvim_exec
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- General config
g.mapleader = " "
opt.clipboard = 'unnamedplus' -- copy/paste to system clipboard

-- UI
opt.number = true
opt.relativenumber = true
