local nnoremap = require("jw.keymap").nnoremap
require("which-key").setup()

local opts = { noremap = true, silent = true }

nnoremap("[e", "<cmd>lua vim.diagnostic.goto_prev({severity = vim.diagnostic.severity.ERROR})<CR>", opts)
nnoremap("]e", "<cmd>lua vim.diagnostic.goto_next({severity = vim.diagnostic.severity.ERROR})<CR>", opts)

local key_maps = {
  { key = 'gr', func = require('navigator.reference').async_ref, desc = 'async_ref' },
  { key = '<Leader>gr', func = require('navigator.reference').reference, desc = 'reference' }, -- reference deprecated
  { mode = 'i', key = '<c-k>', func = vim.lsp.signature_help, desc = 'signature_help' },
  { key = '<c-k>', func = vim.lsp.buf.signature_help, desc = 'signature_help' },
  { key = 'g0', func = require('navigator.symbols').document_symbols, desc = 'document_symbols' },
  { key = 'gW', func = require('navigator.workspace').workspace_symbol_live, desc = 'workspace_symbol_live' },
  { key = 'gd', func = require('navigator.definition').definition, desc = 'definition' },
  { key = 'gD', func = vim.lsp.buf.declaration, desc = 'declaration' },
  { key = 'gp', func = require('navigator.definition').definition_preview, desc = 'definition_preview' },
  { key = '<Leader>gt', func = require('navigator.treesitter').buf_ts, desc = 'buf_ts' },
  { key = '<Leader>ct', func = require('navigator.ctags').ctags, desc = 'ctags' },
  { key = '<Leader>ca', mode = 'n', func = require('navigator.codeAction').code_action, desc = 'code_action' },
  {
    key = '<Leader>ca',
    mode = 'v',
    func = require('navigator.codeAction').range_code_action,
    desc = 'range_code_action',
  },
  { key = '<Leader>rn', func = require('navigator.rename').rename, desc = 'rename' },
  { key = '<Leader>gi', func = vim.lsp.buf.incoming_calls, desc = 'incoming_calls' },
  { key = '<Leader>go', func = vim.lsp.buf.outgoing_calls, desc = 'outgoing_calls' },
  { key = 'gi', func = vim.lsp.buf.implementation, desc = 'implementation' },
  { key = 'gt', func = vim.lsp.buf.type_definition, desc = 'type_definition' },
  { key = 'gL', func = require('navigator.diagnostics').show_diagnostics, desc = 'show_diagnostics' },
  { key = 'gG', func = require('navigator.diagnostics').show_buf_diagnostics, desc = 'show_buf_diagnostics' },
  { key = '<Leader>dt', func = require('navigator.diagnostics').toggle_diagnostics, desc = 'toggle_diagnostics' },
  { key = ']d', func = vim.diagnostic.goto_next, desc = 'next diagnostics' },
  { key = '[d', func = vim.diagnostic.goto_prev, desc = 'prev diagnostics' },
  { key = ']O', func = vim.diagnostic.set_loclist, desc = 'diagnostics set loclist' },
  { key = ']r', func = require('navigator.treesitter').goto_next_usage, desc = 'goto_next_usage' },
  { key = '[r', func = require('navigator.treesitter').goto_previous_usage, desc = 'goto_previous_usage' },
  { key = '<Leader>k', func = require('navigator.dochighlight').hi_symbol, desc = 'hi_symbol' },
  { key = '<Leader>wa', func = require('navigator.workspace').add_workspace_folder, desc = 'add_workspace_folder' },
  {
    key = '<Leader>wr',
    func = require('navigator.workspace').remove_workspace_folder,
    desc = 'remove_workspace_folder',
  },
  { key = '<Leader>ff', func = vim.lsp.buf.format, mode = 'n', desc = 'format' },
  { key = '<Leader>ff', func = vim.lsp.buf.range_formatting, mode = 'v', desc = 'range format' },
  {
    key = '<Leader>gm',
    func = require('navigator.formatting').range_format,
    mode = 'n',
    desc = 'range format operator e.g gmip',
  },
  { key = '<Leader>wl', func = require('navigator.workspace').list_workspace_folders, desc = 'list_workspace_folders' },
  { key = '<Leader>la', mode = 'n', func = require('navigator.codelens').run_action, desc = 'run code lens action' },
}

return key_maps
