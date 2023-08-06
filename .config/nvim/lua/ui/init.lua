vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
--vim.cmd("TransparentToggle")
--vim.opt.laststatus = 2

require 'nvim-web-devicons'.setup {
    -- your personnal icons can go here (to override)
    -- you can specify color or cterm_color instead of specifying both of them
    -- DevIcon will be appended to `name`
    override = {
        zsh = {
            icon = "",
            color = "#428850",
            cterm_color = "65",
            name = "Zsh"
        }
    },
    -- globally enable different highlight colors per icon (default to true)
    -- if set to false all icons will have the default icon's color
    color_icons = true,
    -- globally enable default icons (default to false)
    -- will get overriden by `get_icons` option
    default = true,
    -- globally enable "strict" selection of icons - icon will be looked up in
    -- different tables, first by filename, and if not found by extension; this
    -- prevents cases when file doesn't have any extension but still gets some icon
    -- because its name happened to match some extension (default to false)
    strict = true,
    -- same as `override` but specifically for overrides by filename
    -- takes effect when `strict` is true
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        }
    },
    -- same as `override` but specifically for overrides by extension
    -- takes effect when `strict` is true
    override_by_extension = {
        ["log"] = {
            icon = "",
            color = "#81e043",
            name = "Log"
        }
    },
}

vim.cmd("colorscheme catppuccin")

-- vim.cmd("colorscheme carbonfox") -- default black
-- vim.cmd("colorscheme nightfox") -- default blue
-- vim.cmd("colorscheme dawnfox") -- light 1
-- vim.cmd("colorscheme dayfox") -- light 2
-- vim.cmd("colorscheme duskfox") -- purple
-- vim.cmd("colorscheme nordfox") -- nordbased
-- vim.cmd("colorscheme terafox") -- darker greenish-blue

--require "staline".setup {
--    sections = {
--        left = { '    ', '-mode', 'left_sep', 'branch', ' ', 'lsp' },
--        mid = { 'lsp_name' },
--        right = { 'file_name', 'line_column' }
--    },
--    mode_colors = {
--        n = "#38b1f0",
--        i = "#9ece6a", -- etc mode
--    },
--    defaults = {
--        bg = 'none',
--        true_colors = true,
--        line_column = " [%l/%L] :%c  ",
--        branch_symbol = " "
--    }
--}

vim.cmd [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "neo-tree filesystem [1]" | set laststatus=0 | else | set laststatus=3 | endif]]

require('gitsigns').setup()

vim.opt.showtabline = 2
require 'bufferline'.setup {
}
-- easy transparency with colorschemes
require 'transparent'.setup({
})

require("presence"):setup({
    -- General options
    auto_update         = true,
    neovim_image_text   = "The One True Text Editor",
    main_image          = "file",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,
    blacklist           = {},
    buttons             = true,
    file_assets         = {},
    show_time           = true,
    -- Rich Presence text options
    editing_text        = "Editing %s",
    file_explorer_text  = "Browsing %s",
    git_commit_text     = "Committing changes",
    plugin_manager_text = "Managing plugins",
    reading_text        = "Reading %s",
    workspace_text      = "Working on %s",
    line_number_text    = "Line %s out of %s",
})


local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandRGB<cr>", opts)
-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandHSL<cr>", opts)

require("color-picker").setup({
    -- for changing icons & mappings
    -- ["icons"] = { "ﱢ", "" },
    -- ["icons"] = { "ﮊ", "" },
    -- ["icons"] = { "", "ﰕ" },
    -- ["icons"] = { "", "" },
    -- ["icons"] = { "", "" },
    ["icons"] = { "ﱢ", "" },
    ["border"] = "rounded", -- none | single | double | rounded | solid | shadow
    ["keymap"] = {          -- mapping example:
        ["U"] = "<Plug>ColorPickerSlider5Decrease",
        ["O"] = "<Plug>ColorPickerSlider5Increase",
    },
    ["background_highlight_group"] = "Normal",  -- default
    ["border_highlight_group"] = "FloatBorder", -- default
    ["text_highlight_group"] = "Normal",        --default
})

vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.


require 'colorizer'.setup()
