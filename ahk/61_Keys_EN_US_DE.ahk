; ==============================================================================
; Name .........: 61_Keys_EN_US.ahk
; Description ..: Scripts for 61 keys keyboard (60% Keyboard)
;                 This scripts adds multimedia shortcut keys and german special
;                 characters 'Umlaut' for people who lives in Germany but like
;                 to use US layout keyboard, maybe for programming or any other
;                 purposes.
; OS ...........: Windows 10
; Language .....: English (en-US)
; Author .......: afri-bit <afri.bit@outlook.com>
; Licence ......: MIT
; ==============================================================================

; Globals ======================================================================
#SingleInstance, Force ; Allow only one running instance of the script
#Persistent ; Keep the script permanently running until terminated
#NoEnv ; Avoid checking empty variables for environment variables
#Warn ; Enable warnings to assist with detecting common errors
;#NoTrayIcon ; Disable the tray icon of the script
SendMode, Input ; Method for sending keystrokes and mouse clicks
SetWorkingDir, %A_ScriptDir% ; Set the working directory of the script
;SetBatchLines, -1 ; Run the script at maximum speed
;SetWinDelay, -1 ; The delay to occur after modifying a window
;SetControlDelay, -1 ; The delay to occur after modifying a control
OnExit, ExitSub ; Run a subroutine or function when the script exits

AppsKey & ,::sendinput {Media_Prev}
AppsKey & .::sendinput {Media_Next}
AppsKey & n::sendinput {Media_Play_Pause}
AppsKey & m::sendinput {Volume_Mute}
AppsKey & p::sendinput {Volume_Up}
AppsKey & l::sendinput {Volume_Down}
AppsKey & e::€
AppsKey & a::ä
AppsKey & u::ü
AppsKey & o::ö
AppsKey & s::ß

#if GetKeyState("Shift")
AppsKey & a::Ä
AppsKey & u::Ü
AppsKey & o::Ö

ExitSub:
	ExitApp ; Terminate the script unconditionally
return