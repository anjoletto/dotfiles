--------------------------------------------------------------------------------
-- telescope
--------------------------------------------------------------------------------
fzflua = require('fzf-lua')
vim.keymap.set("n", "<leader>e", fzflua.files, {})
vim.keymap.set("n", "<leader>g", fzflua.git_files, {})
vim.keymap.set("n", "<leader>r", fzflua.grep, {})
vim.keymap.set("n", "<leader>d", fzflua.diagnostics_workspace, {})
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
