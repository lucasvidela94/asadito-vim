return {
  {
    'kevinhwang91/nvim-ufo',
    requires = 'kevinhwang91/promise-async',  -- Dependencia necesaria
    config = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
      vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

      require('ufo').setup({
        provider_selector = function(bufnr, filetype, buftype)
          return {'treesitter', 'indent'}
        end
      })
    end,
  },
  { 'kevinhwang91/promise-async' } -- Plugin de async/await
}

