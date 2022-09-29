vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
--vim.cmd("TransparentToggle")

vim.cmd("colorscheme catppuccin")

-- vim.cmd("colorscheme carbonfox") -- default black
-- vim.cmd("colorscheme nightfox") -- default blue
-- vim.cmd("colorscheme dawnfox") -- light 1
-- vim.cmd("colorscheme dayfox") -- light 2
-- vim.cmd("colorscheme duskfox") -- purple
-- vim.cmd("colorscheme nordfox") -- nordbased
-- vim.cmd("colorscheme terafox") -- darker greenish-blue

require "staline".setup {
    sections = {
        left = { '    ', '-mode',  'left_sep', 'branch', ' ', 'lsp' },
        mid = { 'lsp_name' },
        right = { 'file_name', 'line_column' }
    },
    mode_colors = {
        n = "#38b1f0",
        i = "#9ece6a", -- etc mode
    },
    defaults = {
        bg = 'none',
        true_colors = true,
        line_column = " [%l/%L] :%c  ",
        branch_symbol = " "
    }
}
vim.cmd [[au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "neo-tree filesystem [1]" | set laststatus=0 | else | set laststatus=2 | endif]]

require('gitsigns').setup()

require 'bufferline'.setup {
    animation = true,
    auto_hide = false,
    tabpages = true,
    closable = true,
    clickable = true,
    icons = true,
    icon_custom_colors = false,
    icon_separator_active = '▎',
    icon_separator_inactive = '▎',
    icon_close_tab = '',
    icon_close_tab_modified = '●',
    icon_pinned = '車',
    insert_at_end = false,
    insert_at_start = false,
    maximum_padding = 1,
    maximum_length = 30,
    semantic_letters = true,
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
    no_name_title = nil,
}
-- easy transparency with colorschemes
require 'transparent'.setup({
    enable = true,
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
