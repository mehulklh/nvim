local diag_float_wins = {}

vim.keymap.set('n', '<leader>xk', function()
  local bufnr = vim.api.nvim_get_current_buf()
  local winid = diag_float_wins[bufnr]

  if winid and vim.api.nvim_win_is_valid(winid) then
    vim.api.nvim_win_close(winid, true)
    diag_float_wins[bufnr] = nil
    return
  end

  local _, new_winid = vim.diagnostic.open_float(nil, { scope = 'cursor' })
  diag_float_wins[bufnr] = new_winid
end, { desc = 'Toggle diagnostic float under cursor' })

