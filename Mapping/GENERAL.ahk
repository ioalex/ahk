#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Remap CAPS LOCK to ESC
CapsLock::Esc
; Use CTRL + CAPS LOCK to toggle between cases
^CapsLock::CapsLock

; Right Alt key brings up the context menu
RAlt::AppsKey
