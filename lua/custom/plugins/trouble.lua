return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Lua
    vim.keymap.set('n', '<leader>xx', function()
      require('trouble').toggle()
    end, { desc = 'trouble' })

    vim.keymap.set('n', '<leader>xw', function()
      require('trouble').toggle 'workspace_diagnostics'
    end, { desc = 'workspace_diagnostics' })

    vim.keymap.set('n', '<leader>xd', function()
      require('trouble').toggle 'document_diagnostics'
    end, { desc = 'document_diagnostics' })

    vim.keymap.set('n', '<leader>xq', function()
      require('trouble').toggle 'quickfix'
    end, { desc = 'quickfix' })

    vim.keymap.set('n', '<leader>xl', function()
      require('trouble').toggle 'loclist'
    end, { desc = 'loclist' })

    vim.keymap.set('n', 'gR', function()
      require('trouble').toggle 'lsp_references'
    end, { desc = 'lsp_references' })
  end,
}
