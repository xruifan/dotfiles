return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup {}
    require('nvim-treesitter').install { 'c', 'bash', 'lua', 'markdown', 'vim', 'vimdoc' }

    vim.api.nvim_create_autocmd('FileType', {
      desc = 'Enable treesitter highlighting and indent',
      callback = function(args)
        if pcall(vim.treesitter.start, args.buf) then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
