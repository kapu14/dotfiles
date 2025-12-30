local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- デフォルトのドメインをWSLに設定
config.default_domain = 'WSL:Ubuntu' -- 'Ubuntu' の部分はインストールしているディストリビューション名


-- Windowsでの背景のぼかし（これを入れると文字が見やすくなります）
--config.win32_system_backdrop = 'Acrylic'

-- フロントエンドの描画方式を明示的に指定してみる
config.front_end = "WebGpu" --"WebGpu" -- または "OpenGL"


-- 背景の不透明度（0.0が完全透明、1.0が不透明。0.85くらいが実用的です）
config.window_background_opacity = 0.8

return config
