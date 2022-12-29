--------------------------------------------------------------------------------
-- packer
--------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>PS", ":PackerSync<CR>", {})
vim.keymap.set("n", "<leader>PI", ":PackerInstall<CR>", {})
vim.keymap.set("n", "<leader>PC", ":PackerCompile<CR>", {})
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- telescope
--------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>T", ":Telescope<CR>", {})
vim.keymap.set("n", "<leader>e", require("telescope.builtin").find_files, {})
vim.keymap.set("n", "<leader>g", require("telescope.builtin").git_files, {})
vim.keymap.set("n", "<leader>b", require("telescope.builtin").buffers, {})
vim.keymap.set("n", "<leader>q", require("telescope.builtin").quickfix, {})
vim.keymap.set("n", "<leader>d", require("telescope.builtin").diagnostics, {})
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- undo tree
--------------------------------------------------------------------------------
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true
vim.keymap.set("n", "<leader>U", ":UndotreeToggle<CR>")
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- autopairs
--------------------------------------------------------------------------------
local npairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')

npairs.setup({
    check_ts = true,
    ts_config = {
        lua = {'string'},-- it will not add a pair on that treesitter node
        javascript = {'template_string'},
        java = false,-- don't check treesitter on java
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')

-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Comment
--------------------------------------------------------------------------------
require("Comment").setup({
  padding = true,
  sticky = true,
  ignore = nil,
  toggler = {
    line = "<leader>/",
    block = "<leader>\\",
  },
  opleader = {
    line = "<leader>/",
    block = "<leader>\\",
  },
  extra = {
    eol = "<leader>A"
  },
  mappings = {
    basic = true,
    extra = true,
  },
  pre_hook = nil,
  post_hook = nil,
})
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- git signs
--------------------------------------------------------------------------------

require('gitsigns').setup {
  signs = {
    add          = {hl = 'gitsignsadd'   , text = '+', numhl='gitsignsaddnr'   , linehl='gitsignsaddln'},
    change       = {hl = 'gitsignschange', text = '~', numhl='gitsignschangenr', linehl='gitsignschangeln'},
    delete       = {hl = 'gitsignsdelete', text = '-', numhl='gitsignsdeletenr', linehl='gitsignsdeleteln'},
    topdelete    = {hl = 'gitsignsdelete', text = '‾', numhl='gitsignsdeletenr', linehl='gitsignsdeleteln'},
    changedelete = {hl = 'gitsignschange', text = '=', numhl='gitsignschangenr', linehl='gitsignschangeln'},
  },
  signcolumn = true,  -- toggle with `:gitsigns toggle_signs`
  numhl      = false, -- toggle with `:gitsigns toggle_numhl`
  linehl     = false, -- toggle with `:gitsigns toggle_linehl`
  word_diff  = false, -- toggle with `:gitsigns toggle_word_diff`
  watch_gitdir = {
    interval = 1000,
    follow_files = true
  },
  attach_to_untracked = true,
  current_line_blame = false, -- toggle with `:gitsigns toggle_current_line_blame`
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%y-%m-%d> - <summary>',
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- use default
  max_file_length = 40000, -- disable if file is longer than this (in lines)
  preview_config = {
    -- options passed to nvim_open_win
    border = 'single',
    style = 'minimal',
    relative = 'cursor',
    row = 0,
    col = 1
  },
  yadm = {
    enable = false
  },
}
--------------------------------------------------------------------------------
