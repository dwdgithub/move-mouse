;--------------------------------------------------------------------;
; Title: movemouse.ahk
; Author: DWD
; AHK Version: 1.1.24.0 (x64)
; Script Version: 0.5
; Creation Date: 2016-07-29
; Last Update:   2016-10-25
;
;
; Script Function:
; 1) This script moves the mouse every X seconds by +/- one pixel
;    in the x direction. This is useful to keep a machine from going
;    to sleep, with minimal impact to the user. The script can be
;    closed with Ctrl+Q
;
; Notes: 
;
;--------------------------------------------------------------------;
; Changelog:
; 20XX-XX-XX: 
;--------------------------------------------------------------------;
#SingleInstance force 
#NoEnv  ;Recommended for performance and compatibility with future AutoHotkey releases. see: http://www.autohotkey.com/docs/commands/_NoEnv.htm
SendMode Input  ;Recommended for new scripts due to its superior speed and reliability. see: http://www.autohotkey.com/docs/commands/Send.htm#SendInput, http://www.autohotkey.com/docs/commands/SendMode.htm
SetWorkingDir %A_ScriptDir%  ;Ensures a consistent starting directory.


;--------------------------------------------------------------------;
;                  DEFINE KEYS FOR SCRIPT FUNCTIONS
;--------------------------------------------------------------------;
;define hotkey to quit the script
Hotkey, ~^q, subQuitScript ;Ctrl-Q to quit the script

;define movement interval (in ms)
interval:=4000


Return
;--------------------------------------------------------------------;
;                            SUBROUTINES
;--------------------------------------------------------------------;

;--------------------------------------------------------------------;
; Subroutine: subMain
; Descr: Main subroutine of script
;--------------------------------------------------------------------;
subMain:

;make mouse movement relative to screen instead of window
CoordMode,Mouse,Screen

;initialize vars
x:=0
y:=0

Loop
{
    ;toggle +1/-1 of x coordinate
	if x = 1
        x:= -1
	else 
        x:=1

    MouseMove, x, y,,R  ;move mouse relative to current position
    Sleep interval
}

Return

;--------------------------------------------------------------------;
; Subroutine: subQuitScript
; Descr: quit the script immediately
;--------------------------------------------------------------------;
subQuitScript:
ExitApp

;--------------------------------------------------------------------;
;                           END OF SCRIPT
;--------------------------------------------------------------------;





