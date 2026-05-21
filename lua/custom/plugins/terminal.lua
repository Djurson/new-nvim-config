vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true,
  shell = vim.o.shell,
  size = function(term)
    if term.direction == 'horizontal' then
      return 15
    elseif term.direction == 'vertical' then
      return math.floor(vim.o.columns * 0.4)
    end
  end,
  float_opts = {
    border = 'curved',
    winblend = 0,
  },
}

local Terminal = require('toggleterm.terminal').Terminal

-- Named persistent terminals — each gets its own floating window
-- Use <leader>t1-t4 to toggle, or number-prefix <C-\> (e.g. 1<C-\>)
local frontend = Terminal:new { display_name = 'Frontend', count = 1, hidden = true, direction = 'float' }
local backend = Terminal:new { display_name = 'Backend', count = 2, hidden = true, direction = 'float' }
local python = Terminal:new { display_name = 'Temp Terminal', count = 3, hidden = true, direction = 'float' }
local claude = Terminal:new { cmd = 'claude', display_name = 'Claude Code', count = 4, hidden = true, direction = 'float' }
local git = Terminal:new { display_name = 'Git Terminal', count = 5, hidden = true, direction = 'float' }

vim.keymap.set('n', '<leader>tf', function() frontend:toggle() end, { desc = '[T]erminal: [F]rontend' })
vim.keymap.set('n', '<leader>tb', function() backend:toggle() end, { desc = '[T]erminal: [B]ackend' })
vim.keymap.set('n', '<leader>tt', function() python:toggle() end, { desc = '[T]erminal: [T]emp terminal' })
vim.keymap.set('n', '<leader>tc', function() claude:toggle() end, { desc = '[T]oggle Terminal: [C]laude Code' })
vim.keymap.set('n', '<leader>tg', function() git:toggle() end, { desc = '[T]erminal: [G]it' })

-- Bottom split terminal (closest to VS Code's layout)
vim.keymap.set('n', '<leader>tbs', '<cmd>ToggleTerm direction=horizontal<CR>', { desc = '[T]erminal: [B]ottom [S]plit' })
