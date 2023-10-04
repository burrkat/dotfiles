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

    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

    'tpope/vim-vinegar', -- Better netrw navigation

    'lukas-reineke/indent-blankline.nvim', -- Add indentation guides even on blank lines	

    {
	'kylechui/nvim-surround',
	version = '*', -- Used for stability
	event= 'VeryLazy',
	config = function()
	    require('nvim-surround').setup({
		-- Configuration here, or leave empty to use default_handlers
	    })
	end,
    },
})
