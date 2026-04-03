return {
  "kawre/leetcode.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    theme = {
      ["alt"] = { bg = "none" },
      ["normal"] = { fg = "none" },
    },
    lang = "python3",
    cn = { enabled = false },
    disable_default = true,
    default_code = {
      python3 = {
        "class Solution:",
        "    def twoSum(self, nums, target):",
        "        pass",
      },
    },
  },
}
