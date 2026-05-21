vim.pack.add { 'https://github.com/rcarriga/nvim-notify' }
vim.pack.add { 'https://github.com/folke/noice.nvim' }

-- true  → LSP hover appears in the upper-right corner via Noice
-- false → LSP hover appears below the cursor (default Neovim behavior)
vim.g.lsp_hover_noice = false

require('notify').setup {
  background_colour = '#1E1E2E', -- catppuccin mocha base
  render = 'wrapped-compact',
  timeout = 3000,
}

require('noice').setup {
  lsp = {
    override = {
      ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
      ['vim.lsp.util.stylize_markdown'] = true,
    },
    hover = {
      enabled = vim.g.lsp_hover_noice,
      view = vim.g.lsp_hover_noice and 'hover_corner' or nil,
      opts = {},
    },
  },
  views = {
    hover_corner = {
      backend = 'popup',
      relative = 'editor',
      anchor = 'NE',
      position = { row = 1, col = '100%' },
      size = { width = 70, height = 20 },
      border = { style = 'rounded', padding = { 0, 1 } },
      win_options = { wrap = true, linebreak = true },
      zindex = 50,
    },
  },
  presets = {
    bottom_search = true, -- classic bottom search bar
    command_palette = true, -- cmdline + popupmenu together
    long_message_to_split = true,
  },
  -- To disable noice entirely, comment out the require('noice').setup() call above
}

-- View recent messages
vim.keymap.set('n', '<leader>sm', '<cmd>Noice telescope<CR>', { desc = '[S]earch [M]essages (Noice)' })
