return { -- File Explorer
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {}
    vim.keymap.set('n', '<leader>tt', ':NvimTreeToggle<CR>', { desc = 'toggle NvimTree', silent = true })
  end,
}
