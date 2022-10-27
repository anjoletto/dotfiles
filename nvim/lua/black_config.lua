vim.keymap.set("n", "<leader>b", ":Black<CR>", {noremap = true})

vim.cmd([[
augroup black_on_save
  autocmd!
  autocmd BufWritePre *.py Black
augroup end
]])
