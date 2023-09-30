-- [[ Setting options ]]
-- See `:help vim.o`

local options = {

    -- Set highlight on search
    hlsearch = false,

    -- Make line numbers default
    number = true,
    relativenumber = true,

    -- Enable mouse mode
    mouse = 'a',

    -- Default tab options
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,

    -- Turn on autoindent
    autoindent = true,
    smartindent = true,

    -- Sync clipboard between OS and Neovim.
    --  Remove this option if you want your OS clipboard to remain independent.
    --  See `:help 'clipboard'`
    clipboard = 'unnamedplus',

    -- Enable break indent
    breakindent = true,

    -- Save undo history
    undofile = true,

    -- Case-insensitive searching UNLESS \C or capital in search
    ignorecase = true,
    smartcase = true,

    -- Keep signcolumn on by default
    signcolumn = 'yes',

    -- Decrease update time
    updatetime = 250,
    timeoutlen = 300,

    -- Set completeopt to have a better completion experience
    completeopt = 'menuone,noselect',

    -- NOTE: You should make sure your terminal supports this
    termguicolors = true,

    -- Split new windows to the same direction every time
    splitright = true,
    splitbelow = false,

    -- Highlight the cursor line
    cursorline = true,

    -- Add a column to indicate 80 chars out
    colorcolumn = '80'
}

for option, value in pairs(options) do
    vim.opt[option] = value
end

if jit.os == 'Windows' then
    local powershell_options = {
	shell = 'powershell',
	shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;',
	shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait',
	shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode',
	shellquote = '',
	shellxquote = '',
    }

    for option, value in pairs(powershell_options) do
    	vim.opt[option] = value
    end
end
