return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    on_attach = function(client, bufnr)
      vim.keymap.set('n', '<leader>cc', function()
        -- vim.cmd 'TSToolsRemoveUnusedImports'
        -- vim.cmd "lua require('conform').format {}"
        vim.cmd([[
            TSToolsRemoveUnusedImports
            lua require('conform').format {}
        ]])
      end, { noremap = true, silent = true, buffer = bufnr, desc = 'Format code and remove unuse import' })
    end,
    settings = {
      tsserver_format_options = {
        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true,
        insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = true,
      },
    },
  },
}
