#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ProcessName=WindowsTerminal.exe

;Launch Windows Terminal (Win + `)
#`::

;Activate Windows Terminal if process exists
If ProcessExist(ProcessName)
  pid := ErrorLevel
  IfWinNotActive, % "ahk_pid " pid
  {
    WinActivate, % "ahk_pid " pid
  }

;Launch Windows Terminal if process does not already exist
If !ProcessExist(ProcessName)
  Run "C:\\Users\alex\AppData\Local\Microsoft\WindowsApps\wt.exe"
  WinGetPos,,, sizeX, sizeY
  WinMove, (A_ScreenWidth/2)-(sizeX/2), (A_ScreenHeight/2)-(sizeY/2)
  return

ProcessExist(Name) {
  Process,Exist,%Name%
	return Errorlevel
}
