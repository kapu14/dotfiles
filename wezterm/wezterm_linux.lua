local wezterm = require("wezterm")
local act = wezterm.action

local ime_off_command = { "fcitx5-remote", "-c" }

return {
	-- 背景の不透明度設定 (0.8 = 80%)
	window_background_opacity = 0.75,

	-- キーバインド設定
	keys = {
		{
			key = "Escape",
			mods = "NONE",
			action = act.Multiple({
				-- 1. 普通にEscapeキーを送信
				act.SendKey({ key = "Escape" }),
				-- 2. 外部コマンドを実行してIMEをOFFにする
				act.SpawnCommandInNewTab({
					args = ime_off_command,
				}),
			}),
		},
	},
}
