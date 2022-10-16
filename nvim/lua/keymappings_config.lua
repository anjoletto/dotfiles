vim.g.mapleader = " "

local kset = vim.keymap.set

kset("n", "<F1>", "<nop>")
kset("i", "<C-v>", '<ESC>"+pa')
kset("v", "<C-c>", '"+y')
kset("v", "<C-x>", '"+d')

kset("n", "j", "gj", {noremap = true})
kset("n", "k", "gk", {noremap = true})

kset("v", ">", ">gv", {noremap = true})
kset("v", "<", "<gv", {noremap = true})

kset("n", "<leader>c", ":tabnew<CR>", {noremap = true})
kset("n", "<leader>q", ":tabclose<CR>", {noremap = true})
kset("n", "<leader>p", ":tabprevious<CR>", {noremap = true})
kset("n", "<leader>n", ":tabnext<CR>", {noremap = true})
kset("n", "<leader><TAB>", "<C-w><C-r>", {noremap = true})

vim.cmd([[
" tab completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
]])
