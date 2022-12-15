vim.cmd([[
let g:db_ui_save_location = '~/sql'
let g:db_ui_use_nerd_fonts = 1
let g:db_ui_winwidth = 30
]])

vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>", {noremap = true})

