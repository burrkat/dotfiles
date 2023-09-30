-- [[ Remaps ]]
-- See `:help vim.keymap.set()`

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local Remap = require('burr.keymap')
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap
local tnoremap = Remap.tnoremap

-- Movement --
-- Window
nnoremap('<C-L>', '<C-W><C-L>')
nnoremap('<C-H>', '<C-W><C-H>')
nnoremap('<C-K>', '<C-W><C-K>')
nnoremap('<C-J>', '<C-W><C-J>')

-- Buffer
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')
nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')
-- xnoremap(
--     'n',
--     [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
--     { desc = 'Still need to determine what this does', silent = true }
-- )

-- Editing
vnoremap("J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted selection up (Indent-aware)" })
vnoremap("K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted selection down (Indent-aware)" })
