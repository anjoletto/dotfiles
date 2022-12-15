vim.cmd([[
leg g:db_ui_save_location = '~/sql'
leg g:db_ui_use_nerd_fonts = 1
]])

vim.keymap.nnoremap({"n", "<leader>db", ":DBUIToggle<CR>"})
