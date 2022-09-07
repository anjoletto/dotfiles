lua <<EOF
require 'nvim-treesitter.install'.compilers = { 'clang++'}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "python", "sql" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
