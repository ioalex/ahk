if exist %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Main.lnk (
  echo file exists
) else (
  powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Main.lnk');$s.TargetPath='%OneDrive%\Documents\AutoHotkey\Main.ahk';$s.Save()"
)
