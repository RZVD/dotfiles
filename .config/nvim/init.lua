if vim.g.vscode then
    require 'mappings'
    require 'settings'
else
   require 'packer-config'
   require 'ui'
   require 'settings'
   require 'neo-tree-config'
   require 'mappings'
   require 'lsp'
   require 'autocmds'
   require 'treesitter-config'
   require 'toggleterm-config'
   require 'telescope-config'
   require 'lualine-config'
end
