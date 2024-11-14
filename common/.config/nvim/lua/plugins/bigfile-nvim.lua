return { -- disable features for big files
  'LunarVim/bigfile.nvim',
  config = function()
    require('bigfile').setup {
      filesize = 1, -- in MB
      pattern = { '*' },
      features = {
        'indent_blankline',
        'lsp',
        'syntax',
        'treesitter',
      },
    }
  end,
}
