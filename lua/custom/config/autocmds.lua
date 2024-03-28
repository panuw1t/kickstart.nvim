local augroup = vim.api.nvim_create_augroup('core', { clear = true }) -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand
local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set -- Shorten function name
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- general -- {{{
autocmd({ 'FileType' }, {
  pattern = { 'lua' },
  group = augroup,
  command = ':setlocal foldmethod=marker', -- set fold for lua file
})

autocmd({ 'FileType' }, {
  pattern = { 'help' },
  group = augroup,
  callback = function()
    keymap('n', 'q', ':bd<cr>', { buffer = true })
  end,
})

autocmd({ 'LspAttach' }, {
  group = augroup,
  callback = function()
    keymap('n', '<leader>cf', ':lua vim.lsp.buf.format()<cr>', { buffer = true, desc = 'Format code' })
  end,
})

--}}}

-- abbreviate correct wrong word ------------------------------ {{{
vim.cmd [[ iabbrev waht what
    iabbrev tehn then
]]
-- }}}
