return {
  'github/copilot.vim',
  cmd = 'Copilot',
  event = 'InsertEnter', -- Load when start typing
  config = function()
    -- Keybindings: Setup <C-a> to accept the suggestion
    -- Disable the default <Tab> to avoid conflicts with other plugins.
    vim.g.copilot_no_tab_map = true

    vim.keymap.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = 'Copilot Accept',
    })

    -- Optional: Other useful keybindings
    vim.keymap.set('i', '<C-x>', '<Plug>(copilot-dismiss)', { desc = 'Copilot Dismiss' })
    vim.keymap.set('i', '<C-,>', '<Plug>(copilot-next)', { desc = 'Copilot Next' })
    vim.keymap.set('i', '<C-.>', '<Plug>(copilot-previous)', { desc = 'Copilot Previous' })

    -- Optional: Map <C-l> to accept just the next word (great for precise coding)
    vim.keymap.set('i', '<C-l>', '<Plug>(copilot-accept-word)', { desc = 'Copilot Accept Word' })

    -- Optional: Set specific filetypes where Copilot should be disabled
    vim.g.copilot_filetypes = {
      ['markdown'] = false,
      ['help'] = false,
    }
  end,
}
