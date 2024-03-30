return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },
  opts = {
    adapters = {
      ["neotest-rspec"] = {},
    },
  },
}
