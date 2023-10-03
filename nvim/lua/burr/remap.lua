-- [[ Remaps ]]
-- See `:help vim.keymap.set()`

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local Remap = require('burr.keymap')
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local inoremap = Remap.inoremap
local tnoremap = Remap.tnoremap

-- Navigation --
-- Tab
nnoremap('<leader>tl', ':tabnext<CR>')
nnoremap('<leader>th', ':tabprevious<CR>')

-- Window
nnoremap('<leader>v', vim.cmd.vsplit, { desc = 'Open [v]ertical split window' } )
nnoremap('<leader>h', vim.cmd.split, { desc = 'Open [h]orizontal split window' } )
nnoremap('<C-L>', '<C-W><C-L>')
nnoremap('<C-H>', '<C-W><C-H>')
nnoremap('<C-K>', '<C-W><C-K>')
nnoremap('<C-J>', '<C-W><C-J>')

-- Buffer
nnoremap('<leader>bl', ':bnext<CR>')
nnoremap('<leader>bh', ':bprevious<CR>')
nnoremap('<leader>ql', ':cnext<CR>')
nnoremap('<leader>qh', ':cprev<CR>')
nnoremap('<C-d>', '<C-d>zz')
nnoremap('<C-u>', '<C-u>zz')
nnoremap('n', 'nzzzv')
nnoremap('N', 'Nzzzv')
--- Remaps for dealing with word wrap
nnoremap('j', 'v:count == 0 ? "gj" : "j"', { expr = true, silent = true })
nnoremap('k', 'v:count == 0 ? "gk" : "k"', { expr = true, silent = true })

-- xnoremap(
--     'n',
--     [[:<c-u>let temp_variable=@"<CR>gvy:<c-u>let @/='\V<C-R>=escape(@",'/\')<CR>'<CR>:let @"=temp_variable<CR>]],
--     { desc = 'Still need to determine what this does', silent = true }
-- )
-- Movement END --

-- Editing --
-- Line Movement
vnoremap('J', ':m \'>+1<CR>gv=gv', { desc = 'Move selection up (Indent-aware)' })
vnoremap('K', ':m \'<-2<CR>gv=gv', { desc = 'Move selection down (Indent-aware)' })
vnoremap('<Tab>', '>gv', { desc = 'Shift selection right and re-select' })
vnoremap('<S-Tab>', '<gv' , { desc = 'Shift selection left and re-select' })

-- Copy/Paste
vnoremap('<leader>y', '"+y', { desc = 'Yank to system clipboard' })
nnoremap('<leader>y', '"+y', { desc = 'Yank to system clipboard' })

xnoremap('<leader>p', '"_dP', { desc = 'Paste over selection without losing buffer' })
nnoremap('<leader>dd', '"_dd', { desc = 'Delete line without losing buffer' })
xnoremap('<leader>d', '"_d', { desc = 'Delete selection without losing buffer' })
