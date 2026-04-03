return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    local do_not_replace = vim.deepcopy(opts.open_files_do_not_replace_types or {})
    local extra_types = {
      "Avante",
      "AvanteInput",
      "AvanteSelectedCode",
      "AvanteSelectedFiles",
      "AvanteTodos",
    }
    for _, ft in ipairs(extra_types) do
      if not vim.tbl_contains(do_not_replace, ft) then
        table.insert(do_not_replace, ft)
      end
    end
    opts.open_files_do_not_replace_types = do_not_replace

    opts.window = vim.tbl_deep_extend("keep", opts.window, {
      width = 40,
    })
    opts.filesystem = vim.tbl_deep_extend("keep", opts.filesystem, {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {
          "node_modules",
          ".husky",
          ".vscode",
        },
        never_show = {
          ".DS_Store",
          "thumb.db",
          ".git",
        },
      },
    })
    opts.default_component_configs = vim.tbl_deep_extend("force", opts.default_component_configs or {}, {
      git_status = {
        symbols = {
          added = "",
          modified = "",
          deleted = "",
          renamed = "➜",
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
      },
    })
  end,
}
