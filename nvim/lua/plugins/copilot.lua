return {
  -- 1. Copilot 本体
  {
    "zbirenbaum/copilot.lua",
    -- lazy = false を追加し、cmd や event を一旦削除（またはコメントアウト）
    lazy = false,
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
          },
        },
      })
    end,
  },

  -- 2. Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    lazy = false, -- ここも false にして確実に読み込む
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    -- opts 以下の設定はそのままでOK
    opts = {
      prompts = {
        Explain = { prompt = "/COPILOT_EXPLAIN 選択したコードを日本語で解説してください。" },
        Review = {
          prompt = "/COPILOT_REVIEW 選択したコードをレビューして日本語で改善案を出してください。",
        },
      },
      window = {
        layout = "vertical",
        width = 0.4,
      },
    },
    -- キーマップもそのままでOK
    keys = {
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "CopilotChat - Toggle" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "CopilotChat - Explain" },
    },
  },
}
