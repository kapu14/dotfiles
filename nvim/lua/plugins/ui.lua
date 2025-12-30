-- ~/.config/nvim/lua/plugins/ui.lua
return {
  -- カラースキーム（デフォルトのtokyonightの場合）の設定
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      transparent = true, -- ここで透過を有効化
      styles = {
        sidebars = "transparent", -- サイドバー（NvimTreeなど）も透明に
        floats = "transparent", -- 浮遊ウィンドウも透明に
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- Node.jsの tree-sitter-cli を使わず、
      -- システムの Cコンパイラ(gccやclang)と git を使ってビルドするように強制
      prefer_git = true,
    },
  },
}
