---@type LazySpec
return {
  "chrisgrieser/nvim-chainsaw",
  keys = {
    { ",l", "<cmd>lua require('chainsaw').variableLog()<CR>" },
    { ",d", "<cmd>lua require('chainsaw').removeLogs()<CR>" },
    { ",L", "<cmd>lua require('chainsaw').messageLog()<CR>" },
  },
  opts = {},
}
