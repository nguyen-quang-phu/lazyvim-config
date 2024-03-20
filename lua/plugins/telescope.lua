return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fw",
      function()
        require("telescope.builtin").live_grep()
      end,
      mode = "",
      desc = "Find word in project",
    },
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      mode = "",
      desc = "Find file in project",
    },
  },
}
