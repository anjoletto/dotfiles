----------------------------------------------------------------------
-- normal mode
----------------------------------------------------------------------
vim.keymap.set("n", "<leader>E", vim.cmd.Ex)

vim.keymap.set("n", "<F1>", "<nop>")

vim.keymap.set("n", "k", "gk", {noremap = true})
vim.keymap.set("n", "j", "gj", {noremap = true})
vim.keymap.set("n", "Up", "gk", {noremap = true})
vim.keymap.set("n", "Down", "gj", {noremap = true})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {noremap = true})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {noremap = true})
vim.keymap.set("n", "n", "nzzzv", {noremap = true})
vim.keymap.set("n", "N", "Nzzzv", {noremap = true})

vim.keymap.set("n", "<leader>c", ":tabnew<CR>", {noremap = true})
vim.keymap.set("n", "<leader>q", ":tabclose<CR>", {noremap = true})
vim.keymap.set("n", "<leader>p", ":tabprevious<CR>", {noremap = true})
vim.keymap.set("n", "<leader>n", ":tabnext<CR>", {noremap = true})

vim.keymap.set("n", "<leader><TAB>", "<C-w><C-r>", {noremap = true})
----------------------------------------------------------------------

----------------------------------------------------------------------
-- visual mode
----------------------------------------------------------------------

vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", ">", ">gv", {noremap = true})
vim.keymap.set("v", "<", "<gv", {noremap = true})
----------------------------------------------------------------------

----------------------------------------------------------------------
-- copy and paste
----------------------------------------------------------------------
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("n", "<C-c>", '"+y')
vim.keymap.set("v", "<C-x>", '"+d')
vim.keymap.set("n", "<C-x>", '"+d')
vim.keymap.set("i", "<C-v>", '<ESC>"+pa')

vim.keymap.set("n", "<C-C>", '"+Y')
vim.keymap.set("v", "<C-C>", '"+Y')

vim.keymap.set("x", "<leader>p", '"_dP')
----------------------------------------------------------------------
