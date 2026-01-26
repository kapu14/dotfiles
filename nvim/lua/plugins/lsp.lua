return {
  -- LSP 本体の設定
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 1. vtsls (TypeScript) の設定
        vtsls = {
          filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
          settings = {
            vtsls = {
              tsserver = {
                globalPlugins = {
                  {
                    name = "@vue/typescript-plugin",
                    -- Mason の標準パスを直接指定（メソッド呼び出しを避ける）
                    location = vim.fn.stdpath("data")
                      .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
                    languages = { "vue" },
                    configNamespace = "typescript",
                    enableForWorkspaceTypeScriptVersions = true,
                  },
                },
              },
            },
          },
        },
        -- 2. volar (Vue) の設定
        volar = {
          init_options = {
            vue = {
              hybridMode = true,
            },
          },
        },
      },
    },
  },

  -- 「No information available」の通知を消す（維持）
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
