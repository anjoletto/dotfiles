--------------------------------------------------------------------------------
-- colorscheme configuration
--------------------------------------------------------------------------------
--vim.cmd [[ colorscheme iceberg ]]

vim.cmd([[
colorscheme nord
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" color configuration
let g:nord_cursor_line_number_background = 0
let g:nord_bold_vertical_split_line = 0
let g:nord_uniform_diff_background = 1

" font configuration
let g:nord_bold = 1
let g:nord_italic = 1
"let g:nord_italic_comments = 1
let g:nord_underline = 1
]])
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- line
--------------------------------------------------------------------------------
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'filetype'},
    lualine_y = {'encoding'},
    lualine_z = {'progress', 'location'},
  },
  inactive_sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {'branch', 'diff', 'diagnostics'},
    lualine_x = {'filetype'},
    lualine_y = {'encoding'},
    lualine_z = {'progress', 'location'},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- indents
--------------------------------------------------------------------------------

vim.opt.list = true
--vim.opt.listchars:append("space:⋅")
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#4c566a gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    --space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
    },
}
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- netrw
--------------------------------------------------------------------------------
vim.g.netrw_browser_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30
--------------------------------------------------------------------------------
