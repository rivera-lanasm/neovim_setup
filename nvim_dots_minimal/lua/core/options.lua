
vim.opt.autoread = true 
-- instructs vim to automatically update the buffer if the target file changes

vim.opt.tabstop = 4 
-- four space width tabs
vim.opt.shiftwidth = 4
-- how many spaces to insert when automatically indenting, 
-- used in code block formatting and the "<<" ">>" normal mode bindings, which shift the selection left and right respectively.
vim.opt.shiftround = true
-- round shifts to the nearest whole number multiple of shiftwidth
vim.opt.expandtab = true 
-- automatically changes tabs to spaces where applicable

vim.o.spell = false -- no spellcheck by default
vim.o.number = true

-- Check to see if you're in a blank buffer, 
-- if you are, then assume you are just browsing manuals.
local set_to_help = function ()
    if string.len(vim.api.nvim_buf_get_name(0)) == 0 then
        vim.bo[0].buftype = "help"
    else
        vim.bo[0].buftype = nil
    end
end

-- Recheck for blank page on write
vim.api.nvim_create_autocmd("BufWritePost", { callback = set_to_help , pattern = "*"})
-- run the function on startup too
set_to_help()
