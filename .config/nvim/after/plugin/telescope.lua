local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

vim.keymap.set('n', '<leader>grs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
-- telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>") -- find files within current working directory, respects .
vim.keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>") -- find string in current working directory as you type
vim.keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>") -- find string under cursor in current working director
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>") -- list open buffers in current neovim instance
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>") -- list available help tags

-- telescope git commands
vim.keymap.set("n", "<leader>gc", ":Telescope git_commits<CR>") -- list all git commits
vim.keymap.set("n", "<leader>gfc", ":Telescope git_bcommits<CR>") -- list all git commits for current file/buffer
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>") -- list git branches
vim.keymap.set("n", "<leader>gs", ":Telescope git_status<CR>") -- list current changes per file with diff preview

