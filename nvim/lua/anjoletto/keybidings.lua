----------------------------------------------------------------------
-- normal mode
----------------------------------------------------------------------
vim.keymap.set("n", "<leader>E", vim.cmd.Vex)

vim.keymap.set("n", "<F1>", "<nop>")

vim.keymap.set("n", "k", "gk", {noremap = true})
vim.keymap.set("n", "j", "gj", {noremap = true})
vim.keymap.set("n", "Up", "gk", {noremap = true})
vim.keymap.set("n", "Down", "gj", {noremap = true})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {noremap = true})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {noremap = true})
vim.keymap.set("n", "n", "nzzzv", {noremap = true})
vim.keymap.set("n", "N", "Nzzzv", {noremap = true})

vim.keymap.set("n", "<leader>tc", ":tabnew<CR>", {noremap = true})
vim.keymap.set("n", "<leader>tp", ":tabprevious<CR>", {noremap = true})
vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", {noremap = true})
vim.keymap.set("n", "<leader>co", ":copen<CR>", {noremap = true})
vim.keymap.set("n", "<leader>cp", ":cprevious<CR>", {noremap = true})
vim.keymap.set("n", "<leader>cn", ":cnext<CR>", {noremap = true})
vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, {noremap = true})
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, {noremap = true})
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, {noremap = true})
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
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("v", "<leader>Y", '"+Y')

----------------------------------------------------------------------
