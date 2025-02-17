return { -- Startup dashboard
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          '                              ',
          '                              ',
          '                              ',
          '                              ',
          '                              ',
          '                              ',
          '                              ',
          '                              ',
          '**    ☘︎_ 、         ╱|、   ** ',
          ' ** ૮˶•ﻌ•˶ა        (˚ˎ。7   **',
          '** ◟/づ~づ~        |、˜〵  ** ',
          ' ** し‾‾ل          じしˍ,)ノ**',
          '                              ',
          '                              ',
          '                              ',
          '                              ',
        },
        center = {
          {
            icon = '  ',
            icon_hl = '@property',
            desc = 'Lazy',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Lazy',
            key = 'u',
          },
          {
            icon = '  ',
            icon_hl = '@property',
            desc = 'Mason',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Mason',
            key = 'm',
          },
          {
            icon = '  ',
            icon_hl = 'DashboardShortCut',
            desc = 'Recent Files',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Telescope oldfiles',
            key = 'r',
          },
          {
            icon = '󰱼  ',
            icon_hl = '@function',
            desc = 'Find Files',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            icon = '  ',
            icon_hl = '@function',
            desc = 'Grep Words',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Telescope live_grep',
            key = 'g',
          },
          {
            icon = '  ',
            icon_hl = '@function',
            desc = 'Config',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'Telescope find_files cwd=$HOME/.config/nvim',
            key = 'c',
          },
          {
            icon = '  ',
            icon_hl = 'DashboardFooter',
            desc = 'Exit',
            key_hl = 'DashboardHeader',
            key_format = '   [%s]',
            action = 'q',
            key = 'e',
          },
        },
        footer = {
          '                                    ',
          '/ᐠ-˕-マ｡˚ᶻ𝗓           zᶻ  ૮˶-ﻌ-˶ა⌒)ᦱ',
          '                                    ',
        },
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons', 'nvim-telescope/telescope.nvim' } },
}
