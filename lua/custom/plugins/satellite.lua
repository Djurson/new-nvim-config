vim.pack.add { 'https://github.com/lewis6991/satellite.nvim' }

require('satellite').setup {
  current_only = false,
  winblend = 50,
  handlers = {
    cursor = { enable = true },
    diagnostic = { enable = true, signs = { '-', '=', '≡' } },
    gitsigns = { enable = true },
    marks = { enable = false },
    search = { enable = true },
    quickfix = { enable = true },
  },
}
