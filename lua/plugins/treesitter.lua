return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {

        "bash",
        "html",
        "javascript",
        "tsx",
        "typescript",
        "css",

        "json",
        "json5",
        "jsonc",

        "lua",
        "markdown",
        "markdown_inline",

        "python",
        "ninja",
        "rst",

        "query",
        "regex",
        "vim",
        "yaml",

        "go",
        "gomod",
        "gowork",
        "gosum",

        "rust",
        "toml",
        "ron",

        "dockerfile",
      })
      opts.ensure_installed = vim.fn.uniq(vim.fn.sort(opts.ensure_installed))
    end,
  },
}
