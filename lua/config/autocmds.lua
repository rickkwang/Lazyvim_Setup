-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("BufReadCmd", {
  pattern = { "*.pdf" },
  callback = function()
    if vim.fn.executable("open") == 1 then -- macOS
      vim.fn.jobstart({"open", vim.fn.expand("%:p")}, {detach = true})
      vim.cmd("bwipeout!")
    elseif vim.fn.executable("xdg-open") == 1 then -- Linux
      vim.fn.jobstart({"xdg-open", vim.fn.expand("%:p")}, {detach = true})
      vim.cmd("bwipeout!")
    elseif vim.fn.executable("start") == 1 then -- Windows
      vim.fn.jobstart({"cmd", "/c", "start", vim.fn.fnameescape(vim.fn.expand("%:p"))}, {detach = true})
      vim.cmd("bwipeout!")
    else
      vim.notify("No PDF viewer found", vim.log.levels.WARN)
    end
  end,
})