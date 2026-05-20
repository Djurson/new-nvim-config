vim.pack.add { 'https://github.com/cameron-wags/rainbow_csv.nvim' }
require('rainbow_csv').setup()

-- 2. Import Cost
-- Calculates and displays the inline file size of React/TS imports
vim.pack.add { 'https://github.com/barrett-ruth/import-cost.nvim' }
vim.g.import_cost = {
  package_manager = 'npm', -- Update this if your Next.js project uses yarn or bun
}
-- 3. GitHub Copilot (Inline ghost-text autocomplete)
vim.pack.add { 'https://github.com/zbirenbaum/copilot.lua' }
require('copilot').setup {
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = '<C-l>', -- Press Ctrl+l to accept a Copilot suggestion
      next = '<C-j>', -- Press Ctrl+j to cycle to the next suggestion
      prev = '<C-k>', -- Press Ctrl+k to cycle back
      dismiss = '<C-e>', -- Press Ctrl+e to dismiss
    },
  },
  panel = { auto_refresh = true },
}

vim.pack.add { 'https://github.com/pmizio/typescript-tools.nvim' }

-- Initialize it with your custom options
require('typescript-tools').setup {
  jsx_close_tag = {
    enable = false,
    filetypes = { 'javascriptreact', 'typescriptreact' },
  },
}
