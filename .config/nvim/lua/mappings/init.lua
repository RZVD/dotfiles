local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

map('n', '<C-s>', ':w<CR>') -- Save
map('n', '<leader>e', ':Neotree toggle<CR>') -- File Explorer --float optional

--Window resize
map('n', '<C-Up>', '<C-W>+')
map('n', '<C-Down>', '<C-W>-')
map('n', '<C-Left>', '<C-W>>')
map('n', '<C-Right>', '<C-W><')

-- better exit
map('n', 'ZQ', ':qa!<CR>')
map('n', 'ZZ', ':wqa!<CR>')

-- Line/Visual selection swapping
map('n', '<M-j>', '<CMD>move .+1<CR>')
map('n', '<M-k>', '<CMD>move .-2<CR>')
map('x', '<M-k>', ":move '<-2<CR>gv=gv")
map('x', '<M-j>', ":move '>+1<CR>gv=gv")
--
--Errors
map('n', '<leader>t', ':TroubleToggle<CR>')
-- Terminal

map('n', "<C-t>", ':ToggleTerm<CR>')
map('t', "<C-t>", "<C-\\><C-n>:ToggleTerm<CR>")

-- bufferline
map('n', '<C-j>', ':BufferLinePick<CR>')
map('n', '<C-c>', '<Cmd>BufferClose<CR>')

--telescope
map('n', '<leader>fs', ':Telescope find_files<CR>')
map('n', '<leader>g', ':Telescope live_grep<CR>')

--debugging
map('n', '<leader>db', ":lua require'dapui'.toggle()<CR>")
map('n', '<leader>b', ":lua require'dap'.toggle_breakpoint()<CR>")
map('n', '<F4>', ":lua require'dap'.step_into()")
map('n', '<F2>', ":lua require'dap'.step_over()")

-- better delete and change
map('n', 'c', '"_c')
map('n', 'd', '"_d')

-- formatting
map('n', '<leader>ff', ":LspZeroFormat<CR>")

-- code actions
map('n', '<leader>ca', vim.lsp.buf.code_action)
