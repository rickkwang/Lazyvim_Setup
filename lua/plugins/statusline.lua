return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local theme = vim.deepcopy(require("lualine.themes.auto"))

      for _, mode in pairs(theme) do
        if type(mode) == "table" then
          if mode.a then
            mode.a.bg = mode.a.bg or mode.a.fg
          end
          if mode.b then
            mode.b.bg = "NONE"
          end
          if mode.c then
            mode.c.bg = "NONE"
          end
        end
      end

      opts.options = opts.options or {}
      opts.options.theme = theme
      opts.options.globalstatus = true
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "", right = "" }
      return opts
    end,
  },
}
