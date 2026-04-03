local M = {}

local function get_extension(filepath)
  local match = filepath:match("^.+(%.[^.]+)$")
  return match and match:sub(2) or ""
end

function M.run_code()
  local filepath = vim.fn.expand("%:p")
  local extension = get_extension(filepath)
  local filename = vim.fn.expand("%:t")
  local fileroot = vim.fn.expand("%:r")
  local filedir = vim.fn.expand("%:p:h")
  local exefilename = vim.fn.fnamemodify(fileroot, ":t")

  local command = ""
  local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1

  if extension == "py" then
    command = "cd " .. vim.fn.shellescape(filedir) .. " && python3 " .. vim.fn.shellescape(filepath)
  elseif extension == "c" then
    local exe_file = exefilename
    if is_windows then
      exe_file = exe_file .. ".exe"
      command = "cd " .. vim.fn.shellescape(filedir) .. " && gcc -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && " .. vim.fn.shellescape(exe_file)
    else
      command = "cd " .. vim.fn.shellescape(filedir) .. " && gcc -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && ./" .. vim.fn.shellescape(exe_file)
    end
  elseif extension == "cpp" or extension == "cxx" or extension == "cc" then
    local exe_file = exefilename
    if is_windows then
      exe_file = exe_file .. ".exe"
      command = "cd " .. vim.fn.shellescape(filedir) .. " && g++ -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && " .. vim.fn.shellescape(exe_file)
    else
      command = "cd " .. vim.fn.shellescape(filedir) .. " && g++ -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && ./" .. vim.fn.shellescape(exe_file)
    end
  else
    vim.notify("Unsupported file type: " .. extension, vim.log.levels.WARN)
    return
  end

  local Terminal = require("toggleterm.terminal").Terminal
  local term = Terminal:new({
    cmd = command,
    dir = filedir,
    hidden = false,
    direction = "float",
    close_on_exit = false,
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_option(term.bufnr, "buflisted", false)
    end,
    on_close = function(term)
      vim.cmd("startinsert!")
    end,
    count = 99,
    persist = true,
  })

  term:toggle()
end

return M
