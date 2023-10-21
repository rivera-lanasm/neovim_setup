-- The syntax for these is mode, input, effect, options. 
-- Options expects a table full of options, 
-- and there's a comprehensive list in :help 
-- map-arguments and :help set_keymap.

vim.keymap.set("n", '<leader>h', ':nohlsearch<CR>')
-- This is a shortcut to get rid of the highlights from your last search (/ mode)

vim.keymap.set("n", '<leader>S', ':source $HOME/.config/nvim/lua/core/plugins.lua<CR> | :PackerSync<CR>', { noremap = true})
-- This is a shortcut that will update your plugins
-- without having to reload the program.

vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
-- These are a very common set of commands used to control the diagnostic layer. 
-- Without plugins there won't be a diagnostic layer, but since it's used by 
-- a bunch of different plugins I feel it belongs in core.

