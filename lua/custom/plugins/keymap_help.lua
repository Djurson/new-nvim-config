vim.keymap.set('n', '<leader>hkm', function()
  local path = vim.fn.stdpath 'config' .. '/KEYMAPS.md'
  local buf = vim.api.nvim_create_buf(false, true)

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.fn.readfile(path))

  vim.bo[buf].filetype = 'markdown'
  vim.bo[buf].modifiable = false

  local width  = math.floor(vim.o.columns * 0.82)
  local height = math.floor(vim.o.lines   * 0.82)

  local win = vim.api.nvim_open_win(buf, true, {
    relative  = 'editor',
    width     = width,
    height    = height,
    row       = math.floor((vim.o.lines   - height) / 2),
    col       = math.floor((vim.o.columns - width)  / 2),
    style     = 'minimal',
    border    = 'rounded',
    title     = '  KEYMAPS.md ',
    title_pos = 'center',
  })

  vim.wo[win].conceallevel = 2
  vim.wo[win].wrap         = true
  vim.wo[win].linebreak    = true
  vim.wo[win].cursorline   = true

  vim.keymap.set('n', 'q',     '<cmd>close<CR>', { buffer = buf, nowait = true })
  vim.keymap.set('n', '<Esc>', '<cmd>close<CR>', { buffer = buf, nowait = true })
end, { desc = '[H]elp [K]ey[M]aps' })
