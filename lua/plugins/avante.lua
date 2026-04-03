return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    build = vim.fn.has("win32") ~= 0
      and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
      or "make",
    opts = {
      provider = "codex",
      instructions_file = "avante.md",
      behaviour = {
        auto_suggestions = false,
        auto_add_current_file = true,
      },
      acp_providers = {
        codex = {
          command = "codex-acp",
          args = {},
          env = {
            NODE_NO_WARNINGS = "1",
            OPENAI_API_KEY = os.getenv("OPENAI_API_KEY"),
          },
        },
      },
      mappings = {
        files = {
          add_current = nil,
        },
      },
    },
    keys = {
      { "<leader>aa", "<cmd>AvanteAsk<cr>", desc = "Avante Ask" },
      { "<leader>ah", "<cmd>AvanteChat<cr>", desc = "Avante Chat" },
      { "<leader>ae", "<cmd>AvanteEdit<cr>", mode = "v", desc = "Avante Edit Selection" },
      { "<leader>at", "<cmd>AvanteToggle<cr>", desc = "Avante Toggle Sidebar" },
      { "<leader>as", "<cmd>AvanteStop<cr>", desc = "Avante Stop" },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "stevearc/dressing.nvim",
      "folke/snacks.nvim",
      "hrsh7th/nvim-cmp",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown", "Avante" },
        opts = {
          file_types = { "markdown", "Avante" },
        },
      },
    },
  },
}
