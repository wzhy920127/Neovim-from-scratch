local im_select_path = "D:\Software\im-select\im-select.exe"
vim.g.im_select_command = im_select_path
vim.g.im_select_default = "1033"
vim.g.im_select_enable_focus_events = 0

local augroup = vim.api.nvim_create_augroup

autocmd("InsertEnter", {
  pattern = "*",
  command = 'silent exec '.."!(%s 2052) &",im_select_path,
  group = cursorGrp,
})
-- 进入 VIM
autocmd("VimEnter", {
  pattern = "*",
  command = 'silent exec '..'"!(%s 1033) &"',im_select_path,
  group = cursorGrp,
})
