return { -- Autoformat
  'stevearc/conform.nvim',
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- Run until a formatter is found.
      -- javascript = { { "prettierd", "prettier" } },
    },
  },
}
