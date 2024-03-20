return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fw",
      function()
        require("telescope.builtin").live_grep()
      end,
      mode = "n",
      desc = "TELESCOPE: Find Word in Project",
    },
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      mode = "n",
      desc = "TELESCOPE: Find File in Project",
    },
  },
}
