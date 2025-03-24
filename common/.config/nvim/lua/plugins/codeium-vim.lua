return { -- Codeium integration
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.keymap.set('i', '<C-a>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true, desc = 'Codeium Accept' })
    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true, desc = 'Codeium Clear' })
    vim.keymap.set('i', '<C-,>', function()
      return vim.fn['codeium#CycleCompletions'](1)
    end, { expr = true, silent = true, desc = 'Codeium Next Suggestion' })
    vim.keymap.set('i', '<C-.>', function()
      return vim.fn['codeium#CycleCompletions'](-1)
    end, { expr = true, silent = true, desc = 'Codeium Previous Suggestion' })
    vim.g.codeium_no_map_tab = 1
  end,
}
