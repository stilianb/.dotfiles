vim.g.mapleader = " "

-- General Binds --
vim.keymap.set('i', 'jk', '<ESC>') -- jk instead of esc
vim.keymap.set('n', '<leader>e', vim.cmd.Ex) -- netrw esc
vim.keymap.set('n', '<leader><CR>', ':so %<CR>') -- quickly source file
vim.keymap.set('n', '<leader>P', ':PackerSync<CR>') -- sync plugins

-- Window Management --
vim.keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally 
vim.keymap.set('n', '<leader>se', '<C-w>=') -- equalize window size
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- close split window
vim.keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>') -- goto next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>') -- goto prev tab

-- Prime Remaps --
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'Y', 'yg$')
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y") -- <leader>y yank paragraph
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")

-- format current buffer --
vim.keymap.set("n", "<leader>l", function()
  vim.lsp.buf.format()
end)

vim.keymap.set("n", "<leader>pr", ':Prettier<CR>')

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- increment/decrement numbers --
vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

vim.keymap.set("n", "<leader>v", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>") -- replaces all instances of string my cursor is on
vim.keymap.set("n", "<leader>x", ":!chmod +x %<CR>", { silent = true })

-- Zen Mode --
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>")
