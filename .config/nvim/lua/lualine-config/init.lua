-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
    blue        = '#80a0ff',
    cyan        = '#79dac8',
    black       = '#080808',
    white       = '#c6c6c6',
    red         = '#ff5189',
    violet      = '#d183e8',
    grey        = '#303030',
    transparent = nil
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.violet, gui = "bold" },
        b = { fg = colors.white, bg = colors.grey, gui = "bold" },
        c = { fg = colors.transparent, bg = colors.transparent, gui = "bold" },
    },
    insert = { a = { fg = colors.black, bg = colors.blue } },
    visual = { a = { fg = colors.black, bg = colors.cyan } },
    replace = { a = { fg = colors.black, bg = colors.red } },
    inactive = {
        a = { fg = colors.black, bg = colors.transparent, gui = "bold" },
        b = { fg = colors.white, bg = colors.transparent, gui = "bold" },
        c = { fg = colors.transparent, bg = colors.transparent, gui = "bold" },
    },
}

local config = {
    options = {
        theme = bubbles_theme,
        component_separators = '|',
        section_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch', 'fileformat' },
        lualine_c = { 'diff', 'diagnostics',
            {
                'searchcount',
                maxcount = 999,
                timeout = 500,
            }
        },
        lualine_x = { 'progres' },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
            { 'location', separator = { right = '' }, left_padding = 2 },
        },
    },
    inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
    },
    tabline = {},
    extensions = {},
}

local function ins_left(component)
    table.insert(config.sections.lualine_y, component)
end

ins_left {
    function()
        local msg = ''
        local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
        local clients = vim.lsp.get_active_clients()
        if next(clients) == nil then
            return msg
        end
        for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                return client.name
            end
        end
        return msg
    end,
    icon = '',
    color = { fg = '#ffffff', gui = 'bold' },
}

require('lualine').setup(config)
