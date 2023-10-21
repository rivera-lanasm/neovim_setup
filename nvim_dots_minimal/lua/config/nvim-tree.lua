-- ./lua/config/nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- This tells vim that you're overriding the default file browser, netrw
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true}

require("nvim-tree").setup{
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "h", action = "dir_up" }, -- this is a suggested binding
            },
        },
    },
    renderer = {
        group_empty = true,
    },
}

--require('bufferline').setup{
--    options = {
--        buffer_close_icon = '',
--        always_show_bufferline = false,
--    }
--}

vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<c-h>', ':NvimTreeFocus<CR>') 
-- By default the tree is on the left of the screen, 
-- so I think of <C-h> as a sort of "go all the way left" command.

-- Move tab focus right
keymap('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
keymap('n', '<A-H>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<A-L>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- These are some very basic movement commands, 
-- Feel free to change their mappings, 
-- I just happen to like using alt to move tabs, 
-- it mimics the behavior of my web browser 
-- (but vim flavored with the h/l movement keys).

