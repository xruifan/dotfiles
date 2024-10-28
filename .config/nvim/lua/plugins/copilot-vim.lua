return { -- GitHub copilot integration
  'github/copilot.vim',
  config = function()
    vim.keymap.set('i', '<C-a>', 'copilot#Accept()', {
      expr = true,
      desc = 'Accept copilot suggestion',
      replace_keycodes = false,
    })
    vim.g.copilot_no_tab_map = true
  end,
}
