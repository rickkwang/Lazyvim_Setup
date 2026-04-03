-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local run_code = require("config.run_code")
vim.keymap.set("n", "<leader>rc", run_code.run_code, { desc = "Run current file (Python/C/C++)" })

vim.keymap.set("n", "<leader>rp", ":!g++ -g % -o %< && ./%< <CR>", { desc = "Compile and run C++ file" })
vim.keymap.set("n", "<leader>cx", ":!gcc -g % -o %< <CR>", { desc = "Compile C file" })
vim.keymap.set("n", "<leader>px", ":!g++ -g % -o %< <CR>", { desc = "Compile C++ file" })
