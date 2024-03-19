return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      solargraph = {
        mason = false,
        settings = {
          solargraph = {
            diagnostics = false,
          },
        },
      },
    },
  },
}
