local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'sumneko_lua',
  'bashls',
  'rnix',
  'jsonls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({})

-- for copilot
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
      info = 'i',
      hint = 'h',
      warning = 'w',
      error = 'e',
    }
})

lsp.setup()

vim.cmd([[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})]])

-- go to definition in a split
local function goto_definition(split_cmd)
  local util = vim.lsp.util
  local log = require("vim.lsp.log")
  local api = vim.api

  -- note, this handler style is for neovim 0.5.1/0.6, if on 0.5, call with function(_, method, result)
  local handler = function(_, result, ctx)
    if result == nil or vim.tbl_isempty(result) then
      local _ = log.info() and log.info(ctx.method, "No location found")
      return nil
    end

    if split_cmd then
      vim.cmd(split_cmd)
    end

    if vim.tbl_islist(result) then
      util.jump_to_location(result[1])

      if #result > 1 then
        util.set_qflist(util.locations_to_items(result))
        api.nvim_command("copen")
        api.nvim_command("wincmd p")
      end
    else
      util.jump_to_location(result)
    end
  end

  return handler
end

vim.lsp.handlers["textDocument/definition"] = goto_definition('split')


--------------------------------------------------------------------------------
-- some key maps
--------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>d", vim.diagnostic.setloclist, {noremap = true, silent = true})
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, {noremap = true, silent = true})
--------------------------------------------------------------------------------
