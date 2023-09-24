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

    -- Default tab options
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    colorcolumn = "80",

    -- Keep signcolumn on by default
    signcolumn = 'yes',

    -- Decrease update time
    updatetime = 250,
    timeoutlen = 300,

    -- Set completeopt to have a better completion experience
    completeopt = 'menuone,noselect',

    -- NOTE: You should make sure your terminal supports this
    termguicolors = true,
}

for option, value in pairs(options) do
  vim.opt[option] = value
end
