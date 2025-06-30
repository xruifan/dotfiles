return { -- Indentation
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',

  config = function()
    require('ibl').setup {
      exclude = {
        filetypes = {
          'dashboard',
        },
      },
      scope = {
        show_start = false,
        show_end = false,
      },
    }
  end,
}
