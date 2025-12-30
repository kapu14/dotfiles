#Requires AutoHotkey v2.0
!j::Down
!h::Left
!k::Up
!l::Right
!e::End
!a::Home
!@::Delete
!u::PgUp
!d::PgDn
!w::WheelUP
!s::WheelDown
!vkBA::Backspace
!Space::Enter
!u::+Home
!o::+End
!p::SendText "Console.ReadLine().Split().Select(int.Parse).ToArray();"

#Requires AutoHotkey v2.0
; Windows Terminal または WSL 関連のウィンドウがアクティブな時だけ有効
#HotIf WinActive("ahk_exe wezterm-gui.exe") or WinActive("ahk_exe WindowsTerminal.exe") or WinActive("ahk_class ConsoleWindowClass")
; Escキーを押した時の挙動
~Esc::
{
    ; IMEの状態を取得・制御するための関数
    try {
        hwnd := WinGetID("A")
        defaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", "Uint", hwnd, "Uint")
        
        ; IMEをオフにする (0x006 はセット状態の変更、LParam 0 はオフを指す)
        SendMessage(0x283, 0x006, 0, defaultIMEWnd)
    }
}

#HotIf