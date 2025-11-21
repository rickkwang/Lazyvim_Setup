-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Universal run command for Python, C, C++
local run_code = require("config.run_code")
vim.keymap.set("n", "<leader>rc", run_code.run_code, { desc = "Run current file (Python/C/C++) in terminal" })

-- Legacy shortcuts (optional - can be removed if not needed)
vim.keymap.set("n", "<leader>rp", ":!g++ -g % -o %< && ./%< <CR>", { desc = "Compile and run C++ file" })
vim.keymap.set("n", "<leader>cx", ":!gcc -g % -o %< <CR>", { desc = "Compile C file" })
vim.keymap.set("n", "<leader>px", ":!g++ -g % -o %< <CR>", { desc = "Compile C++ file" })
