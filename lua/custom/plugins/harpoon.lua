vim.pack.add { { src = 'https://github.com/ThePrimeagen/harpoon', version = 'harpoon2' } }

local harpoon = require 'harpoon'
harpoon:setup()

vim.keymap.set('n', '<leader>ra', function() harpoon:list():add() end, { desc = '[R]eel [A]dd file' })
vim.keymap.set('n', '<leader>rr', function() harpoon:list():remove() end, { desc = '[R]eel [R]emove file' })
vim.keymap.set('n', '<leader>rl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[R]eel [L]ist' })

vim.keymap.set('n', '<leader>r1', function() harpoon:list():select(1) end, { desc = '[R]eel to file 1' })
vim.keymap.set('n', '<leader>r2', function() harpoon:list():select(2) end, { desc = '[R]eel to file 2' })
vim.keymap.set('n', '<leader>r3', function() harpoon:list():select(3) end, { desc = '[R]eel to file 3' })
vim.keymap.set('n', '<leader>r4', function() harpoon:list():select(4) end, { desc = '[R]eel to file 4' })

