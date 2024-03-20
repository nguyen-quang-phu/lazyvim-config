return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      ruby = { "rubocop" },
      eruby = { "erb_lint" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescript = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      vue = { "eslint_d" },
    },
  },
}
