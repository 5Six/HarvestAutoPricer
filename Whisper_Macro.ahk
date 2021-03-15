#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Ignore
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


#Persistent
Clipboard := ""

OnClipboardChange:
if (SubStr(Clipboard, 1, 1) = "@")
	{
	WinActivate, ahk_class POEWindowClass ;
	Sleep, 10
	Send, {Enter}
	Sleep, 10
	Send, {LControl Down}
	Sleep, 10
	Send, {a}
	Sleep, 10
	Send, {Backspace}
	Sleep, 10	
	Send, {v}
	Sleep, 10
	Send, {LControl Up}
	Sleep, 10
	Send, {Enter}
	Sleep, 10
	}
return
