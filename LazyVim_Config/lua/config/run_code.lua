-- RunCode utils
local M = {}

-- 获取文件扩展名
local function get_extension(filepath)
  local match = filepath:match("^.+(%.[^.]+)$")
  return match and match:sub(2) or ""
end

-- 运行代码的函数
function M.run_code()
  local filepath = vim.fn.expand("%:p") -- 当前文件的完整路径
  local extension = get_extension(filepath)
  local filename = vim.fn.expand("%:t") -- 当前文件名
  local fileroot = vim.fn.expand("%:r") -- 不带扩展名的文件名 (完整路径)
  local filedir = vim.fn.expand("%:p:h") -- 文件所在目录
  local exefilename = vim.fn.fnamemodify(fileroot, ":t") -- 只有文件名(不含路径)

  local command = ""
  local terminal_title = ""
  -- 检测操作系统
  local is_windows = vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1
  local is_unix = vim.fn.has("unix") == 1

  if extension == "py" then
    command = "cd " .. vim.fn.shellescape(filedir) .. " && python3 " .. vim.fn.shellescape(filepath)
    terminal_title = "Python: " .. filename
  elseif extension == "c" then
    local exe_file = exefilename
    if is_windows then
      exe_file = exe_file .. ".exe"
      command = "cd " .. vim.fn.shellescape(filedir) .. " && gcc -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && " .. vim.fn.shellescape(exe_file)
    else
      command = "cd " .. vim.fn.shellescape(filedir) .. " && gcc -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && ./" .. vim.fn.shellescape(exe_file)
    end
    terminal_title = "C: " .. filename
  elseif extension == "cpp" or extension == "cxx" or extension == "cc" then
    local exe_file = exefilename
    if is_windows then
      exe_file = exe_file .. ".exe"
      command = "cd " .. vim.fn.shellescape(filedir) .. " && g++ -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && " .. vim.fn.shellescape(exe_file)
    else
      command = "cd " .. vim.fn.shellescape(filedir) .. " && g++ -g -Wall " .. vim.fn.shellescape(filepath) .. " -o " .. vim.fn.shellescape(exe_file) .. " && ./" .. vim.fn.shellescape(exe_file)
    end
    terminal_title = "C++: " .. filename
  else
    vim.notify("Unsupported file type: " .. extension, vim.log.levels.WARN)
    return
  end

  -- 检查当前是否有可用的ToggleTerm终端
  local Terminal = require("toggleterm.terminal").Terminal
  local term = Terminal:new({
    cmd = command,
    dir = filedir, -- 设置工作目录为当前文件所在目录
    hidden = false,
    direction = "float",
    close_on_exit = false,
    on_open = function(term)
      vim.cmd("startinsert!")
      vim.api.nvim_buf_set_option(term.bufnr, "buflisted", false)
      -- 设置终端窗口标题
      print("Running command: " .. command)
    end,
    on_close = function(term)
      vim.cmd("startinsert!")
    end,
    count = 99, -- 使用特定的计数避免冲突
    persist = true,
  })

  term:toggle()
end

return M