' This script will automatically generate a shortcut in the startup folder so
' that the program will start automatically when Windows  starts.

' Get a system object
dim fso: set fso = CreateObject("Scripting.FileSystemObject")
dim CurrentDirectory
CurrentDirectory = fso.GetAbsolutePathName(".")

' Create the link in the startup folder
Set objShell = WScript.CreateObject("WScript.Shell")
startupFolder = objShell.SpecialFolders("Startup") ' %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
Set lnk = objShell.CreateShortcut(startupFolder & "\Hotkey relay.LNK")

' Set link properties 
lnk.TargetPath = CurrentDirectory & "\Hotkey.exe"
lnk.Arguments = ""
lnk.Description = "Demarrage du hotkey listener"
lnk.WorkingDirectory = CurrentDirectory
lnk.Save

'Clean up 
Set lnk = Nothing