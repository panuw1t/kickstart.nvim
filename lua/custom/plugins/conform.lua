return {
  -- Autoformat
  -- overwrite from main plugins
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { { 'prettier' } },
        typescriptreact = { { 'prettier' } },
      },
    }
  end,
}
