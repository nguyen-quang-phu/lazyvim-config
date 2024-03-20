return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = {
        format = function(diagnostic)
          if diagnostic.code == nil then
            return string.format("[%s]: %s", diagnostic.source, diagnostic.message)
          end

          return string.format("[%s]: %s (%s)", diagnostic.source, diagnostic.message, diagnostic.code)
        end,
      },
    },
    servers = {
      emmet_language_server={},
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
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable a keymap
    keys[#keys + 1] = { "gr", false }
  end,
}
