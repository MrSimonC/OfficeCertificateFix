global version = 1.2
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;===Customised Settings===
#SingleInstance force		;stops complaint message when reloading this file

; Menu
Menu, Tray, add, &About, About
Menu, Tray, Default, &About 	;Double click icon activates menu item
Menu, Tray, Add, E&xit, ^+Esc
Menu, Tray, NoStandard	;Remove the standard complied hotkey menus: "Exit, Suspend Hotkeys, Pause Script"

;workaround for broken office certification
TrayTip, Felinesoft Office Certificate Fixer, Running
Loop
{
	IfWinExist, Security Alert ahk_exe SearchProtocolHost.exe
	{
		WinActivate, A
		ControlClick, Button2, Security Alert ahk_exe SearchProtocolHost.exe
	}
	IfWinExist, Security Alert ahk_exe OUTLOOK.EXE
	{
		WinActivate, A
		ControlClick, Button2, Security Alert ahk_exe OUTLOOK.EXE
	}
	IfWinExist, Security Alert ahk_exe UcMapi.exe
	{
		WinActivate, A
		ControlClick, Button2, Security Alert ahk_exe UcMapi.exe
	}
	IfWinExist, Security Alert ahk_exe lync.exe
	{
		WinActivate, A
		ControlClick, Button2, Security Alert ahk_exe lync.exe
	}
	Sleep 500
}

; Script Control
^+Esc::ExitApp	;kills application dead when pressing Ctrl+Esc. Note: This line will stop any auto-exec code underneath.
^Esc::	;Reload the script / kill it if there is a problem
	Reload
	Sleep 1000 ;if successful, Reload will close this instance during the Sleep, so the line below will never be reached.
	ExitApp
Return

;=====================

About:
    MsgBox,, Office fixer, Temporary Office fixer for Felinesoft`r`nby Simon Crouch`r`nversion %version%
Return