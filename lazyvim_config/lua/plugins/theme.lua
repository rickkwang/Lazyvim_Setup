return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "storm",
        transparent = true,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { bold = true, italic = true },
          sidebars = "transparent",
          floats = "transparent",
        },
        plugins = {
          all = true,
        },
        on_colors = function(colors) end,
        on_highlights = function(highlights, colors)
          highlights.LspInlayHint = {
            bg = colors.none,
            fg = colors.dark3,
          }
          highlights.Statement = { fg = colors.magenta, italic = true, bold = true }
          highlights.Type = { fg = colors.blue1, bold = true }
          highlights["@tag.attribute.tsx"] = { italic = true, fg = colors.green2 }
          highlights["@keyword.import.tsx"] = { bold = true, italic = true, fg = colors.red1 }
          highlights["@keyword.import.typescript"] = { bold = true, italic = true, fg = colors.red1 }
          highlights["@keyword.export.tsx"] = { bold = true, italic = true, fg = colors.red1 }
          highlights["@keyword.export.typescript"] = { bold = true, italic = true, fg = colors.red1 }

          highlights["@keyword.import.rust"] = { bold = true, fg = colors.red }
          highlights["@lsp.type.rust"] = { italic = true, fg = colors.red1 }
          highlights["@lsp.type.namespace.rust"] = { fg = colors.red1 }

          highlights.RainbowDelimiterRed = { fg = "#FF5D62" }
          highlights.RainbowDelimiterYellow = { fg = "#E6C384" }
          highlights.RainbowDelimiterBlue = { fg = "#7FB4CA" }
          highlights.RainbowDelimiterOrange = { fg = "#FFA066" }
          highlights.RainbowDelimiterGreen = { fg = "#98BB6C" }
          highlights.RainbowDelimiterViolet = { fg = "#D27E99" }
          highlights.RainbowDelimiterCyan = { fg = "#7AA89F" }

          -- Additional transparency configurations
          highlights.Normal = { bg = colors.none }
          highlights.NormalFloat = { bg = colors.none }
          highlights.FloatBorder = { bg = colors.none }
          highlights.CursorLine = { bg = colors.none }
          highlights.SignColumn = { bg = colors.none }
          highlights.MsgArea = { bg = colors.none }
          highlights.ModeMsg = { bg = colors.none }
          highlights.MsgSeparator = { bg = colors.none }
          highlights.SpellBad = { bg = colors.none }
          highlights.SpellCap = { bg = colors.none }
          highlights.SpellLocal = { bg = colors.none }
          highlights.SpellRare = { bg = colors.none }
          highlights.NormalNC = { bg = colors.none }
          highlights.TelescopeNormal = { bg = colors.none }
          highlights.TelescopePromptNormal = { bg = colors.none }
          highlights.TelescopePromptBorder = { bg = colors.none, fg = colors.none }
          highlights.TelescopeResultsNormal = { bg = colors.none }
          highlights.TelescopePreviewNormal = { bg = colors.none }
          highlights.TelescopeBorder = { bg = colors.none, fg = colors.none }
          highlights.TelescopePromptTitle = { bg = colors.none, fg = colors.none }
          highlights.TelescopeResultsTitle = { bg = colors.none, fg = colors.none }
          highlights.TelescopePreviewTitle = { bg = colors.none, fg = colors.none }
          highlights.Pmenu = { bg = colors.none }
          highlights.PmenuSbar = { bg = colors.none }
          highlights.PmenuThumb = { bg = colors.none }
          highlights.TabLine = { bg = colors.none }
          highlights.TabLineFill = { bg = colors.none }
          highlights.TabLineSel = { bg = colors.none }
        end,
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    name = "catppuccin",
    opts = {
      flavour = "frappe",
      transparent_background = true,
      term_colors = true,
      styles = {
        comments = { "italic" },
        conditionals = { "bold", "italic" },
        constants = { "bold" },
        keywords = { "bold" },
        loops = { "italic", "bold" },
      },
      color_overrides = {},
      custom_highlights = function(C)
        return {
          -- Make all backgrounds transparent
          Normal = { bg = "none" },
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none", fg = C.yellow },
          FloatTitle = { bg = "none" },
          CursorLine = { bg = "none" },
          SignColumn = { bg = "none" },
          MsgArea = { bg = "none" },
          ModeMsg = { bg = "none" },
          MsgSeparator = { bg = "none" },
          SpellBad = { bg = "none" },
          SpellCap = { bg = "none" },
          SpellLocal = { bg = "none" },
          SpellRare = { bg = "none" },
          NormalNC = { bg = "none" },
          TelescopeNormal = { bg = "none" },
          TelescopePromptNormal = { bg = "none" },
          TelescopePromptBorder = { bg = "none", fg = "none" },
          TelescopeResultsNormal = { bg = "none" },
          TelescopePreviewNormal = { bg = "none" },
          TelescopeBorder = { bg = "none", fg = "none" },
          TelescopePromptTitle = { bg = "none", fg = "none" },
          TelescopeResultsTitle = { bg = "none", fg = "none" },
          TelescopePreviewTitle = { bg = "none", fg = "none" },
          Pmenu = { bg = "none" },
          PmenuSbar = { bg = "none" },
          PmenuThumb = { bg = "none" },
          TabLine = { bg = "none" },
          TabLineFill = { bg = "none" },
          TabLineSel = { bg = "none" },

          RainbowDelimiterRed = { fg = "#FF5D62" },
          RainbowDelimiterYellow = { fg = "#E6C384" },
          RainbowDelimiterBlue = { fg = "#7FB4CA" },
          RainbowDelimiterOrange = { fg = "#FFA066" },
          RainbowDelimiterGreen = { fg = "#98BB6C" },
          RainbowDelimiterViolet = { fg = "#D27E99" },
          RainbowDelimiterCyan = { fg = "#7AA89F" },
          -- RainbowDelimiterRed = { fg = "#FF1A75" },
          -- RainbowDelimiterYellow = { fg = "#f1ff5e" },
          -- RainbowDelimiterBlue = { fg = "#28C9FF" },
          -- RainbowDelimiterOrange = { fg = "#FFAA54" },
          -- RainbowDelimiterGreen = { fg = "#5eff6c" },
          -- RainbowDelimiterViolet = { fg = "#bd5eff" },
          -- RainbowDelimiterCyan = { fg = "#33FFFF" },
          ["@tag.tsx"] = { bold = true },
          ["@keyword.import.tsx"] = { italic = true, fg = C.red },
          ["@keyword.import.typescript"] = { italic = true, fg = C.red },
          ["@keyword.export.tsx"] = { italic = true, fg = C.red },
          ["@keyword.export.typescript"] = { italic = true, fg = C.red },
        }
      end,
      integrations = {
        telescope = {
          enabled = true,
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        flash = true,
        barbar = true,
        gitsigns = true,
        leap = true,
        neotree = true,
        neotest = true,
        mason = true,
        noice = true,
        notify = true,
        which_key = true,
        semantic_tokens = true,
        mini = {
          enabled = true,
        },
        overseer = true,
        cmp = true,
        dap = true,
        dap_ui = true,
        treesitter_context = true,
        treesitter = true,
        window_picker = true,
        rainbow_delimiters = true,
        symbols_outline = true,
        lsp_trouble = true,
        illuminate = {
          enabled = true,
          lsp = true,
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
          inlay_hints = {
            background = false,
          },
        },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = {},
        statementStyle = { bold = true },
        typeStyle = { bold = true },
        transparent = true,  -- Changed to true for full transparency
        terminalColors = true,
        colors = {
          palette = {},
          theme = {
            wave = {},
            lotus = {},
            dragon = {},
            all = {
              ui = {
                bg_gutter = "none",
              },
            },
          },
        },
        overrides = function(colors)
          local theme = colors.theme
          return {
            Normal = { bg = "none" },
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },
            CursorLine = { bg = "none" },
            SignColumn = { bg = "none" },
            MsgArea = { bg = "none" },
            ModeMsg = { bg = "none" },
            MsgSeparator = { bg = "none" },
            SpellBad = { bg = "none" },
            SpellCap = { bg = "none" },
            SpellLocal = { bg = "none" },
            SpellRare = { bg = "none" },
            NormalNC = { bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopePromptNormal = { bg = "none" },
            TelescopePromptBorder = { bg = "none", fg = "none" },
            TelescopeResultsNormal = { bg = "none" },
            TelescopePreviewNormal = { bg = "none" },
            TelescopeBorder = { bg = "none", fg = "none" },
            TelescopePromptTitle = { bg = "none", fg = "none" },
            TelescopeResultsTitle = { bg = "none", fg = "none" },
            TelescopePreviewTitle = { bg = "none", fg = "none" },
            Pmenu = { bg = "none" },
            PmenuSbar = { bg = "none" },
            PmenuThumb = { bg = "none" },
            TabLine = { bg = "none" },
            TabLineFill = { bg = "none" },
            TabLineSel = { bg = "none" },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = "none" },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = "none", fg = theme.ui.fg_dim },
            MasonNormal = { bg = "none", fg = theme.ui.fg_dim },
            ["@tag.attribute.tsx"] = { italic = true, fg = theme.syn.identifier },
            ["@keyword.import.tsx"] = { bold = true, fg = theme.syn.preproc },
            ["@keyword.import.typescript"] = { bold = true, fg = theme.syn.preproc },
            ["@keyword.export.tsx"] = { bold = true, fg = theme.syn.preproc },
            ["@keyword.export.typescript"] = { bold = true, fg = theme.syn.preproc },
          }
        end,
        theme = "wave",
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
