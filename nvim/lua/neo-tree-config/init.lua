-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require 'neo-tree'.setup {
    add_blank_line_at_top = true,
    source_selector = {
        statusline = false
    },
    filesystem = {
        filtered_items = {
            visible = true
        }
    }
}
