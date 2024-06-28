return {
  'nvim-tree/nvim-tree.lua',
  priority = 500,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require('nvim-tree').setup {}
    vim.keymap.set('n', '<leader>ee', '<cmd>NvimTreeToggle<cr>', {
      silent = true,
      desc = 'Toggle NvimTree',
    })
  end,
}
