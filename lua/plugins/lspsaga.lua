return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({})
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "<leader>la",
      "<cmd>Lspsaga code_action<CR>",
      mode = "n",
      desc = "LSPSAGA Code Action",
    },
  },
}
