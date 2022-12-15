require 'nvim-treesitter.install'.compilers = { "clang", "clang++"}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "nix", "lua", "python", "sql", "rust", "go", "yaml", "json", "markdown" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
