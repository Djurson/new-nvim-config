-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local plugins = {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
}

if vim.g.have_nerd_font then
  table.insert(plugins, 'https://github.com/nvim-tree/nvim-web-devicons') -- not strictly required, but recommended
end

vim.pack.add(plugins)

vim.keymap.set('n', '<leader>tft', '<Cmd>Neotree focus<CR>', { desc = '[T]oggle [F]ocus [T]ree', silent = true })
vim.keymap.set('n', '<leader>tt', '<Cmd>Neotree toggle<CR>', { desc = '[T]oggle Neo[t]ree', silent = true })

require('neo-tree').setup {
  close_if_last_window = true,
  filesystem = {
    hijack_netrw_behavior = 'disabled',
    filtered_items = {
      hide_hidden = false,
      hide_dotfiles = false,
      hide_gitignored = false,
    },
    window = {
      mappings = {
        ['\\'] = 'close_window',
      },
    },
  },
}
