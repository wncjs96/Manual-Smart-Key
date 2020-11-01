#NoEnv
SetBatchLines, 15ms
SetBatchLines, 1
Thread, NoTimers, true
SendMode InputThenPlay
;Menu, Tray, Icon, , , 1

#SingleInstance,Force
#MaxThreadsPerHotkey 1
#MaxThreads 1

condition:=0
state := 1
var=0

SetKeyDelay, 1, -1 

F1:: condition:=1
F2:: condition:=0

#if var < 1

$+q:: 
var = 1
IfWinNotActive, BlackSurvivalER 
{
	Send, {Shift Down}{q}{Shift UP}
	var = 0
	return
}
;MouseGetPos, LocX, LocY
;BlockInput, Mousemove
;MouseMove, X1, Y1, 0
Send, q
Mouseclick, left
Mouseclick, left
;MouseMove, %LocX%, %LocY%, 0
;BlockInput, MousemoveOff
var = 0
;KeyWait, q
return

$+w:: 
var=1
IfWinNotActive, BlackSurvivalER
{
	Send, {Shift Down}{w}{Shift UP}
	var = 0
	return
}
;MouseGetPos, LocX, LocY
;BlockInput, Mousemove
;While GetKeyState("Control", "P") && GetKeyState("w", "P"){
;MouseMove, A_ScreenWidth-170, A_ScreenHeight-325, 0
;MouseMove, relX-170, relY-325, 0
;MouseMove, X2, Y2, 0
SetKeyDelay, 1, -1 
Send, w
Mouseclick, left
Mouseclick, left
;	Sleep, 30
;}
;MouseMove, %LocX%, %LocY%, 0
;BlockInput, MousemoveOff
var = 0
;KeyWait, w
return

$+e:: 
var=1
IfWinNotActive, BlackSurvivalER
{
	Send, {Shift Down}{e}{Shift UP}
	var = 0
	return
}
;MouseGetPos, LocX, LocY
;BlockInput, Mousemove
;While GetKeyState("Control", "P") && GetKeyState("e", "P"){
;MouseMove, A_ScreenWidth-100, A_ScreenHeight-325, 0	
;MouseMove, relX-100, relY-325, 0
;MouseMove, X3, Y3, 0
Send, e
Mouseclick, left
Mouseclick, left
;	Sleep, 30
;}
;MouseMove, %LocX%, %LocY%, 0
;BlockInput, MousemoveOff
var = 0
;KeyWait, e
return

$+r:: 
var=1
IfWinNotActive, BlackSurvivalER
{
	Send, {Shift Down}{r}{Shift UP}
	var = 0
	return
}
;MouseGetPos, LocX, LocY
;BlockInput, Mousemove
;While GetKeyState("Control", "P") && GetKeyState("r", "P"){
;MouseMove, A_ScreenWidth-40, A_ScreenHeight-325, 0   
;MouseMove, relX-40, relY-325, 0
;MouseMove, X4, Y4, 0
Send, r
Mouseclick, left
Mouseclick, left
;	Sleep, 30
;}
;MouseMove, %LocX%, %LocY%, 0
;BlockInput, MousemoveOff
var = 0
;KeyWait, r
return

$+d:: 
var=1
IfWinNotActive, BlackSurvivalER
{
	Send, {Shift Down}{d}{Shift UP}
	var = 0
	return
}
Send, d
Mouseclick, left
Mouseclick, left
var = 0
;KeyWait, d
return

;	Sleep, 30

$+RButton::
var=1
Send, a
Mouseclick, left
Mouseclick, left
var = 0
return

if ErrorLevel = 1
msgbox, error detected

#if
