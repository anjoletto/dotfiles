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
