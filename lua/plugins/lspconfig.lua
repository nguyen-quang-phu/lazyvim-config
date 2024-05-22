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
    ---@type lspconfig.options
    servers = {
      ---@type lspconfig.options.lua_ls
      lua_ls = {
        settings = {
          Lua = {
            hint = {
              enable = true,
              setType = true,
              paramName = "All",
              paramType = true,
            },
          },
        },
      },
      emmet_language_server = {},
      sqls = {},
      css_variables = {},
      cssls = {},
      phpactor = {},
      volar = {
        settings = {
          volar = {
            filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
          },
        },
      },
      ---@type lspconfig.options.gopls
      gopls = {
        settings={
         gopls={
           hint={
            } 
          } 
        }
      },
      ---@type lspconfig.options.tsserver
      tsserver = {
        -- keys = {
        --   {
        --     "<leader>co",
        --     function()
        --       vim.lsp.buf.code_action({
        --         apply = true,
        --         context = {
        --           only = { "source.organizeImports.ts" },
        --           diagnostics = {},
        --         },
        --       })
        --     end,
        --     desc = "Organize Imports",
        --   },
        --   {
        --     "<leader>cR",
        --     function()
        --       vim.lsp.buf.code_action({
        --         apply = true,
        --         context = {
        --           only = { "source.removeUnused.ts" },
        --           diagnostics = {},
        --         },
        --       })
        --     end,
        --     desc = "Remove Unused Imports",
        --   },
        -- },
        -- filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
        settings = {
          --   completions = {
          --     completeFunctionCalls = true,
          --   },
          typescript = {
            inlayHints = {
              includeCompletionsWithInsertText = true,
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
          javascript = {
            inlayHints = {
              includeCompletionsWithInsertText = true,
              includeInlayParameterNameHints = "all",
              includeInlayParameterNameHintsWhenArgumentMatchesName = false,
              includeInlayFunctionParameterTypeHints = true,
              includeInlayVariableTypeHints = true,
              includeInlayPropertyDeclarationTypeHints = true,
              includeInlayFunctionLikeReturnTypeHints = true,
              includeInlayEnumMemberValueHints = true,
            },
          },
        },
      },
      tailwindcss = {
        settings = {
          tailwindCSS = {
            classAttributes = { ":class", "class", "className" },
            experimental = {
              classRegex = {
                { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                { "clsx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                { "(?:enter|leave)(?:From|To)?=\\s*(?:\"|')([^(?:\"|')]*)" },
                { "cn\\(([^)]*)\\)", "'([^']*)'" },
                { ":class?=\\s*(?:\"|'|{`)([^(?:\"|'|`})]*)" },
              },
            },
          },
        },
      },
      eslint = {
        mason = false,
        -- root_dir = require("lspconfig.util").root_pattern("package.json"),
        settings = {
          eslint = {
            workingDirectory = { mode = "auto" },
          },
        },
      },
      ---@type lspconfig.options.ruby_lsp
      -- ruby_lsp = {
      --   mason = false,
      --   -- settings={
      --   --  ruby_lsp={
      --   --
      --   --   }
      --   -- }
      -- },
      ---@type lspconfig.options.solargraph
      solargraph = {
        enable = false,
        mason = false,
        settings = {
          hint = {
            enable = true,
          },
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
