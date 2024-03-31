return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },
  opts = {
    adapters = {
      ["neotest-rspec"] = {
        -- NOTE: By default neotest-rspec uses the system wide rspec gem instead of the one through bundler
        rspec_cmd = function()
          return vim.tbl_flatten({
            "bundle",
            "exec",
            "rspec",
          })
        end,
      },
    },
  },
}
