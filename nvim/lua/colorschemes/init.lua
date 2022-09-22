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

require 'feline'.setup()

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
