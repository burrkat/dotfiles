local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Colors
    {
	'catppuccin/nvim',
	priority = 1000,
	config = function()
	    vim.cmd.colorscheme 'catppuccin'
	end,
    },

    -- Git
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',
    'kdheepak/lazygit.nvim',

    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    -- Better netrw navigation
    'tpope/vim-vinegar',
})
