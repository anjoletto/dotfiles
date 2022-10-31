require("toggleterm").setup{
  direction = "float",
  float_opts = {
    border = "curved",
    width = 80,
    height = 25,
  },
}

vim.keymap.set("n", "<leader>t", "<cmd>:ToggleTerm<CR>", {noremap = true})
