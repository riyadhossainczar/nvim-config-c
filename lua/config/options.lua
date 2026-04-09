vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.g.autoformat = true

vim.opt.updatetime = 1718




vim.opt.updatetime = 2718

local autosave_group = vim.api.nvim_create_augroup("Autosave", { clear = true })

vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI", "CursorHold", "CursorHoldI", "FocusLost" }, {
  group = autosave_group,
  pattern = "*",
  callback = function()
    
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent! wall")
    end
  end,
})


