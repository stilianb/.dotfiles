local opt = vim.opt -- for conciseness

opt.relativenumber = true -- relative line numbers
opt.number = true -- absolute line number next to relative

opt.scrolloff = 8 -- autoscroll when 8 lines away from bottom of screen

-- tabs & indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false -- line wrapping

-- search settings
opt.ignorecase = true
opt.smartcase = true -- including mixed case in search -> assume case sensitive
opt.hlsearch = false
opt.incsearch = true

opt.swapfile = false
opt.backup = false

opt.termguicolors = true
opt.signcolumn = "yes" -- show sign column so text doesn't shift
opt.isfname:append("@-@")

-- allow backspace on indent, end of line, or insert mode start position
opt.backspace = "indent,eol,start" 

opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.iskeyword:append("-") -- consider string-string as whole word

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.cmdheight = 1 -- give more space for displaying messages

opt.updatetime = 50

opt.colorcolumn = "100"

