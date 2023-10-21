local keymap = vim.keymap.set

keymap("n", "<leader>c`", "<plug>NERDCommenterAltDelims", {silent = false})
keymap({"n", "v"}, "<leader>c ", "<plug>NERDCommenterToggle", {silent = true})
