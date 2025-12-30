return {
  {
    "stevearc/oil.nvim",
    -- 依存関係（アイコン表示用）
    dependencies = { "nvim-tree/nvim-web-devicons" },
    -- lazy = false は、起動時に oil を確実にロードするために推奨されます
    lazy = false,
    -- opts に設定を書くと、自動的に require("oil").setup(opts) が実行されます
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    },
    -- キーマップは config ではなく keys で定義するのが LazyVim 流です
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },
}
