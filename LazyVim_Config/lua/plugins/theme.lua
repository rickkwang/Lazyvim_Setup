return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        floats = "transparent",
        sidebars = "transparent",
      },
      on_colors = function(colors)
        local groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "FloatBorder",
          "SignColumn",
          "StatusLine",
          "StatusLineNC",
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "NeoTreeEndOfBuffer",
          "NeoTreeStatusLine",
          "NeoTreeStatusLineNC",
          "NeoTreeVertSplit",
          "WinSeparator",
        }
        for _, group in ipairs(groups) do
          vim.api.nvim_set_hl(0, group, { bg = "none" })
        end
      end,
    },
  },

  -- lualine 透明
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = require("lualine.themes.tokyonight")
      for _, mode in pairs(opts.sections or {}) do
        for _, section in pairs(mode) do
          if type(section) == "table" and section.bg then
            section.bg = "none"
          end
        end
      end
      vim.api.nvim_set_hl(0, "lualine_c_normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "lualine_x_normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "lualine_a_normal", { bg = "none" })
    end,
  },
}
