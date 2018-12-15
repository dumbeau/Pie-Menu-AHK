#Persistent
#SingleInstance ignore
#Include %A_ScriptDir%\Resources\GDIp_All.ahk
#Include %A_ScriptDir%\Resources\GDIpHelper.ahk
CoordMode, Mouse, Screen
	
	
;---------------------------
;PHOTOSHOP PIE MENU Settings
;---------------------------


FileReadLine, Bnull_Label          ,%A_ScriptDir%\Resources\settingsfile.txt,8
FileReadLine, Bnull_OverrideLabel  ,%A_ScriptDir%\Resources\settingsfile.txt,9 
FileReadLine, Bnull_SendKeystroke  ,%A_ScriptDir%\Resources\settingsfile.txt,10
FileReadLine, B1_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,11
FileReadLine, B1_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,12
FileReadLine, B1_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,13
FileReadLine, B2_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,14
FileReadLine, B2_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,15
FileReadLine, B2_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,16
FileReadLine, B3_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,17
FileReadLine, B3_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,18
FileReadLine, B3_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,19
FileReadLine, B4_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,20
FileReadLine, B4_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,21
FileReadLine, B4_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,22
FileReadLine, B5_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,23
FileReadLine, B5_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,24
FileReadLine, B5_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,25
FileReadLine, B6_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,26
FileReadLine, B6_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,27
FileReadLine, B6_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,28
FileReadLine, Pnull_Label          ,%A_ScriptDir%\Resources\settingsfile.txt,29
FileReadLine, Pnull_OverrideLabel  ,%A_ScriptDir%\Resources\settingsfile.txt,30
FileReadLine, Pnull_SendKeystroke  ,%A_ScriptDir%\Resources\settingsfile.txt,31
FileReadLine, P1_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,32
FileReadLine, P1_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,33
FileReadLine, P1_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,34
FileReadLine, P2_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,35
FileReadLine, P2_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,36
FileReadLine, P2_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,37
FileReadLine, P3_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,38
FileReadLine, P3_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,39
FileReadLine, P3_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,40
FileReadLine, P4_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,41
FileReadLine, P4_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,42
FileReadLine, P4_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,43
FileReadLine, P5_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,44
FileReadLine, P5_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,45
FileReadLine, P5_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,46
FileReadLine, P6_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,47
FileReadLine, P6_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,48
FileReadLine, P6_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,49
FileReadLine, Rnull_Label          ,%A_ScriptDir%\Resources\settingsfile.txt,50
FileReadLine, Rnull_OverrideLabel  ,%A_ScriptDir%\Resources\settingsfile.txt,51
FileReadLine, Rnull_SendKeystroke  ,%A_ScriptDir%\Resources\settingsfile.txt,52
FileReadLine, R1_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,53
FileReadLine, R1_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,54
FileReadLine, R1_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,55
FileReadLine, R2_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,56
FileReadLine, R2_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,57
FileReadLine, R2_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,58
FileReadLine, R3_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,59
FileReadLine, R3_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,60
FileReadLine, R3_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,61
FileReadLine, R4_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,62
FileReadLine, R4_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,63
FileReadLine, R4_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,64
FileReadLine, R5_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,65
FileReadLine, R5_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,66
FileReadLine, R5_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,67
FileReadLine, R6_Label             ,%A_ScriptDir%\Resources\settingsfile.txt,68
FileReadLine, R6_OverrideLabel     ,%A_ScriptDir%\Resources\settingsfile.txt,69
FileReadLine, R6_SendKeystroke     ,%A_ScriptDir%\Resources\settingsfile.txt,70


FileReadLine, Bnull_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,71
FileReadLine,    B1_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,72
FileReadLine,    B2_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,73
FileReadLine,    B3_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,74
FileReadLine,    B4_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,75
FileReadLine,    B5_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,76
FileReadLine,    B6_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,77
FileReadLine, Pnull_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,78
FileReadLine,    P1_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,79
FileReadLine,    P2_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,80
FileReadLine,    P3_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,81
FileReadLine,    P4_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,82
FileReadLine,    P5_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,83
FileReadLine,    P6_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,84
FileReadLine, Rnull_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,85
FileReadLine,    R1_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,86
FileReadLine,    R2_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,87
FileReadLine,    R3_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,88
FileReadLine,    R4_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,89
FileReadLine,    R5_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,90
FileReadLine,    R6_ExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,91


FileReadLine, Bnull_Label          ,%A_ScriptDir%\Resources\Functions.txt, Bnull_Label
Bnull_Label := StrSplit(Bnull_Label, ":")
Bnull_Label := SubStr(Bnull_Label[1], 3)
FileReadLine, B1_Label          ,%A_ScriptDir%\Resources\Functions.txt, B1_Label
B1_Label := StrSplit(B1_Label, ":")
B1_Label := SubStr(B1_Label[1], 3)
FileReadLine, B2_Label          ,%A_ScriptDir%\Resources\Functions.txt, B2_Label
B2_Label := StrSplit(B2_Label, ":")
B2_Label := SubStr(B2_Label[1], 3)
FileReadLine, B3_Label          ,%A_ScriptDir%\Resources\Functions.txt, B3_Label
B3_Label := StrSplit(B3_Label, ":")
B3_Label := SubStr(B3_Label[1], 3)
FileReadLine, B4_Label          ,%A_ScriptDir%\Resources\Functions.txt, B4_Label
B4_Label := StrSplit(B4_Label, ":")
B4_Label := SubStr(B4_Label[1], 3)
FileReadLine, B5_Label          ,%A_ScriptDir%\Resources\Functions.txt, B5_Label
B5_Label := StrSplit(B5_Label, ":")
B5_Label := SubStr(B5_Label[1], 3)
FileReadLine, B6_Label          ,%A_ScriptDir%\Resources\Functions.txt, B6_Label
B6_Label := StrSplit(B6_Label, ":")
B6_Label := SubStr(B6_Label[1], 3)

FileReadLine, Pnull_Label          ,%A_ScriptDir%\Resources\Functions.txt, Pnull_Label
Pnull_Label := StrSplit(Pnull_Label, ":")
Pnull_Label := SubStr(Pnull_Label[1], 3)
FileReadLine, P1_Label          ,%A_ScriptDir%\Resources\Functions.txt, P1_Label
P1_Label := StrSplit(P1_Label, ":")
P1_Label := SubStr(P1_Label[1], 3)
FileReadLine, P2_Label          ,%A_ScriptDir%\Resources\Functions.txt, P2_Label
P2_Label := StrSplit(P2_Label, ":")
P2_Label := SubStr(P2_Label[1], 3)
FileReadLine, P3_Label          ,%A_ScriptDir%\Resources\Functions.txt, P3_Label
P3_Label := StrSplit(P3_Label, ":")
P3_Label := SubStr(P3_Label[1], 3)
FileReadLine, P4_Label          ,%A_ScriptDir%\Resources\Functions.txt, P4_Label
P4_Label := StrSplit(P4_Label, ":")
P4_Label := SubStr(P4_Label[1], 3)
FileReadLine, P5_Label          ,%A_ScriptDir%\Resources\Functions.txt, P5_Label
P5_Label := StrSplit(P5_Label, ":")
P5_Label := SubStr(P5_Label[1], 3)
FileReadLine, P6_Label          ,%A_ScriptDir%\Resources\Functions.txt, P6_Label
P6_Label := StrSplit(P6_Label, ":")
P6_Label := SubStr(P6_Label[1], 3)

FileReadLine, Rnull_Label          ,%A_ScriptDir%\Resources\Functions.txt, Rnull_Label
Rnull_Label := StrSplit(Rnull_Label, ":")
Rnull_Label := SubStr(Rnull_Label[1], 3)
FileReadLine, R1_Label          ,%A_ScriptDir%\Resources\Functions.txt, R1_Label
R1_Label := StrSplit(R1_Label, ":")
R1_Label := SubStr(R1_Label[1], 3)
FileReadLine, R2_Label          ,%A_ScriptDir%\Resources\Functions.txt, R2_Label
R2_Label := StrSplit(R2_Label, ":")
R2_Label := SubStr(R2_Label[1], 3)
FileReadLine, R3_Label          ,%A_ScriptDir%\Resources\Functions.txt, R3_Label
R3_Label := StrSplit(R3_Label, ":")
R3_Label := SubStr(R3_Label[1], 3)
FileReadLine, R4_Label          ,%A_ScriptDir%\Resources\Functions.txt, R4_Label
R4_Label := StrSplit(R4_Label, ":")
R4_Label := SubStr(R4_Label[1], 3)
FileReadLine, R5_Label          ,%A_ScriptDir%\Resources\Functions.txt, R5_Label
R5_Label := StrSplit(R5_Label, ":")
R5_Label := SubStr(R5_Label[1], 3)
FileReadLine, R6_Label          ,%A_ScriptDir%\Resources\Functions.txt, R6_Label
R6_Label := StrSplit(R6_Label, ":")
R6_Label := SubStr(R6_Label[1], 3)

;Blue Pie Labels
;----------------
;Blue Middle
; Bnull_Label = B/E Toggle
;Blue Top_Right
;B1_Label = RectS Move

;Blue Top
; B2_Label = LassoS Move
;Blue Top_Left
; B3_Label = Fill
;Blue Bottom_Left
; B4_Label = Pen/Curve
;Blue Bottom
; B5_Label = Undo
;Blue Bottom_Right
; B6_Label = Deselect

;Purple Pie Labels 
;------------------
;Purple Middle
; Pnull_Label = Left Click
;Purple Top_Right
; P1_Label = New Layer
;Purple Top
; P2_Label = Move Tool
;Purple Top_Left
; P3_Label = Bucket/Gradient
;Purple Bottom_Left
; P4_Label = Brush Size
;Purple Bottom
; P5_Label = Redo
;Purple Bottom_Right
; P6_Label = Fast Eyedropper

;Red Pie Labels 
;------------------
;Red Middle
; Rnull_Label = Left Click
; Red Top_Right
; R1_Label = New Layer
;Red Top
; R2_Label = Move Tool
;Red Top_Left
; R3_Label = Bucket/Gradient
;Red Bottom_Left
; R4_Label = Brush Size
;Red Bottom
; R5_Label = Redo
;Red Bottom_Right
; R6_Label = Fast Eyedropper

;If you want to send a shortcut, you can type one in or use the PieMenuSettings script.

;Functions in this File.  Should be in the Settings applet.
; Delete Key
; Enter Key
; Eyedropper
; Brush Size
; New Layer
;Default Functions in order
; B/E Toggle
; RectS Move
; LassoS Move
; Fill
; Pen/Curve
; Undo
; Deselect
; Left Click
; Marquee
; Move Tool
; Bucket/Gradient
; Stamp Tool
; Redo
; Fast Eyedropper

;These Settings are all denoted by settingsfile.txt in Resources folder.
;Change these with the PieMenuSettings.ahk Script

;Key that activates the Pie Menu, preferably set to a key on your tablet penTool
FileReadline, piekeysetting, %A_ScriptDir%\Resources\settingsfile.txt, 1
PieActivateKey = %piekeysetting%

;How long until Pie Menu labels appear
;I recommend not changing this, it is a purposefully uncomfortable time to encourage you to learn the positions
FileReadline, pielabeldelaysetting, %A_ScriptDir%\Resources\settingsfile.txt, 2
ShowLabelDelay := pielabeldelaysetting

;How Many Pies to Use?  Setting is 1-3
FileReadline, PieNumberSetting, %A_ScriptDir%\Resources\settingsfile.txt, 3

;Method for Switching between pies.  Range 1-4
FileReadline, RPieSelectNum, %A_ScriptDir%\Resources\settingsfile.txt, 4
MethodtoShift := RPieSelectNum
	If MethodtoShift = 1
		MethodtoShiftText := "Leave Center and Return to Switch Pie Function"
	If MethodtoShift = 2
		MethodtoShiftText := "Leave Center and Return for Purple, Circle and Return for Red"
	If MethodtoShift = 3
		MethodtoShiftText := "Hover over Top and Bottom (circle around), then Return to Center"
	If MethodtoShift = 4
		MethodtoShiftText := "Shift->Purple   Ctrl->Red  Alt->Blue"
	If PieNumberSetting = 1
		MethodtoShiftText :=  "You're only using ONE MENU!?? laaaaaaame... Go to PieMenuSettings.ahk to change this."

;Pie Menu Size Setting
FileReadLine, PieMenuSizeTemp,%A_ScriptDir%\Resources\settingsfile.txt,92
If PieMenuSizeTemp = 1
	{
	PieMenuScale := 45
	PieMenuOffset := 23
	PieMenuSize := 22
	Bnull_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuNull.png
	   B1_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill1.png
	   B2_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill2.png
	   B3_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill3.png
	   B4_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill4.png
	   B5_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill5.png
	   B6_Image = %A_ScriptDir%\Resources\1PieMenu\PieMenuFill6.png
	Pnull_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuNull.png
	   P1_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill1.png
	   P2_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill2.png
	   P3_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill3.png
	   P4_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill4.png
	   P5_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill5.png
	   P6_Image = %A_ScriptDir%\Resources\1PieMenu\PPieMenuFill6.png
	Rnull_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuNull.png
	   R1_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill1.png
	   R2_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill2.png
	   R3_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill3.png
	   R4_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill4.png
	   R5_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill5.png
	   R6_Image = %A_ScriptDir%\Resources\1PieMenu\RPieMenuFill6.png
	}
If PieMenuSizeTemp = 2
	{
	PieMenuScale := 71
	PieMenuOffset := 36
	PieMenuSize := 29
	Bnull_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuNull.png
			 B1_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill1.png
			 B2_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill2.png
			 B3_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill3.png
			 B4_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill4.png
			 B5_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill5.png
			 B6_Image = %A_ScriptDir%\Resources\2PieMenu\PieMenuFill6.png
	Pnull_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuNull.png
			 P1_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill1.png
	         P2_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill2.png
	         P3_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill3.png
	         P4_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill4.png
	         P5_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill5.png
	         P6_Image = %A_ScriptDir%\Resources\2PieMenu\PPieMenuFill6.png
	Rnull_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuNull.png
			 R1_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill1.png
			 R2_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill2.png
			 R3_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill3.png
			 R4_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill4.png
			 R5_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill5.png
	         R6_Image = %A_ScriptDir%\Resources\2PieMenu\RPieMenuFill6.png
	}
If PieMenuSizeTemp = 3
	{
	PieMenuScale := 100
	PieMenuOffset := 50
	PieMenuSize := 48
	Bnull_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuNull.png
			 B1_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill1.png
			 B2_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill2.png
			 B3_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill3.png
			 B4_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill4.png
			 B5_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill5.png
			 B6_Image = %A_ScriptDir%\Resources\3PieMenu\PieMenuFill6.png
	Pnull_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuNull.png
			 P1_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill1.png
	         P2_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill2.png
	         P3_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill3.png
	         P4_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill4.png
	         P5_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill5.png
	         P6_Image = %A_ScriptDir%\Resources\3PieMenu\PPieMenuFill6.png
	Rnull_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuNull.png
			 R1_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill1.png
			 R2_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill2.png
			 R3_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill3.png
			 R4_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill4.png
			 R5_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill5.png
	         R6_Image = %A_ScriptDir%\Resources\3PieMenu\RPieMenuFill6.png
	}


;Helpful hints about the Pie menu will show up at the bottom if On
FileReadline, DisplayTooltipssetting, %A_ScriptDir%\Resources\settingsfile.txt, 5
ShowToolTips := DisplayTooltipssetting

;This is just a useful little addon that makes the Middle Mouse Button Pan your document.
FileReadline, MMBPansetting, %A_ScriptDir%\Resources\settingsfile.txt, 6

If piekeysetting != MButton
	MButtonPanning := MMBPansetting
Else 
	MButtonPanning := 0
	





;Initialize variables
PressEnter := False
PressDeselect := 0
BlockLButton := 0
ActiveBrush := "paintbrushTool"

;Replaces spaces in labels with Underscores to link to function labels

Bnull_FuncLabel := RegExReplace(Bnull_Label, " ", "_")
fBnull_Label = %Bnull_Label%
	If RegExMatch(Bnull_FuncLabel, "Send")
		{
		Bnull_SendLabel := % Bnull_SendKeystroke
		Bnull_FuncLabel := SubStr(Bnull_FuncLabel, 1, 8)
		If (Bnull_OverrideLabel != "")
			fBnull_Label = %Bnull_OverrideLabel%
		}
	If Bnull_FuncLabel = Run_Program
		{
		If (Bnull_OverrideLabel != "")
			fBnull_Label = %Bnull_OverrideLabel%
		}
B1_FuncLabel := RegExReplace(B1_Label, " ", "_")
fB1_Label = %B1_Label%
	If RegExMatch(B1_FuncLabel, "Send")
		{
		B1_SendLabel := % B1_SendKeystroke
		B1_FuncLabel := SubStr(B1_FuncLabel, 1, 8)
		If (B1_OverrideLabel != "")
			fB1_Label = %B1_OverrideLabel%
		}
	If B1_FuncLabel = Run_Program
		{
		If (B1_OverrideLabel != "")
			fB1_Label = %B1_OverrideLabel%
		}
B2_FuncLabel := RegExReplace(B2_Label, " ", "_")
fB2_Label = %B2_Label%
	If RegExMatch(B2_FuncLabel, "Send")
		{
		B2_SendLabel := % B2_SendKeystroke
		B2_FuncLabel := SubStr(B2_FuncLabel, 1, 8)
		If (B2_OverrideLabel != "")
			fB2_Label = %B2_OverrideLabel%
		}
	If B2_FuncLabel = Run_Program
		{
		If (B2_OverrideLabel != "")
			fB2_Label = %B2_OverrideLabel%
		}
B3_FuncLabel := RegExReplace(B3_Label, " ", "_")
fB3_Label = %B3_Label%
	If RegExMatch(B3_FuncLabel, "Send")
		{
		B3_SendLabel := % B3_SendKeystroke
		B3_FuncLabel := SubStr(B3_FuncLabel, 1, 8)
		If (B3_OverrideLabel != "")
			fB3_Label = %B3_OverrideLabel%
		}
	If B3_FuncLabel = Run_Program
		{
		If (B3_OverrideLabel != "")
			fB3_Label = %B3_OverrideLabel%
		}
B4_FuncLabel := RegExReplace(B4_Label, " ", "_")
fB4_Label = %B4_Label%
	If RegExMatch(B4_FuncLabel, "Send")
		{
		B4_SendLabel := % B4_SendKeystroke
		B4_FuncLabel := SubStr(B4_FuncLabel, 1, 8)
		If (B4_OverrideLabel != "")
			fB4_Label = %B4_OverrideLabel%
		}
	If B4_FuncLabel = Run_Program
		{
		If (B4_OverrideLabel != "")
			fB4_Label = %B4_OverrideLabel%
		}
B5_FuncLabel := RegExReplace(B5_Label, " ", "_")
fB5_Label = %B5_Label%
	If RegExMatch(B5_FuncLabel, "Send")
		{
		B5_SendLabel := % B5_SendKeystroke
		B5_FuncLabel := SubStr(B5_FuncLabel, 1, 8)
		If (B5_OverrideLabel != "")
			fB5_Label = %B5_OverrideLabel%
		}
	If B5_FuncLabel = Run_Program
		{
		If (B5_OverrideLabel != "")
			fB5_Label = %B5_OverrideLabel%
		}
B6_FuncLabel := RegExReplace(B6_Label, " ", "_")
fB6_Label = %B6_Label%
	If RegExMatch(B6_FuncLabel, "Send")
		{
		B6_SendLabel := % B6_SendKeystroke
		B6_FuncLabel := SubStr(B6_FuncLabel, 1, 8)
		If (B6_OverrideLabel != "")
			fB6_Label = %B6_OverrideLabel%
		}
	If B6_FuncLabel = Run_Program
		{
		If (B6_OverrideLabel != "")
			fB6_Label = %B6_OverrideLabel%
		}		
Pnull_FuncLabel := RegExReplace(Pnull_Label, " ", "_")
fPnull_Label = %Pnull_Label%
	If RegExMatch(Pnull_FuncLabel, "Send")
		{
		Pnull_SendLabel := % Pnull_SendKeystroke
		Pnull_FuncLabel := SubStr(Pnull_FuncLabel, 1, 8)
		If (Pnull_OverrideLabel != "")
			fPnull_Label = %Pnull_OverrideLabel%
		}
	If Pnull_FuncLabel = Run_Program
		{
		If (Pnull_OverrideLabel != "")
			fPnull_Label = %Pnull_OverrideLabel%
		}
P1_FuncLabel := RegExReplace(P1_Label, " ", "_")
fP1_Label = %P1_Label%
	If RegExMatch(P1_FuncLabel, "Send")
		{
		P1_SendLabel := % P1_SendKeystroke
		P1_FuncLabel := SubStr(P1_FuncLabel, 1, 8)
		If (P1_OverrideLabel != "")
			fP1_Label = %P1_OverrideLabel%
		}
	If P1_FuncLabel = Run_Program
		{
		If (P1_OverrideLabel != "")
			fP1_Label = %P1_OverrideLabel%
		}
P2_FuncLabel := RegExReplace(P2_Label, " ", "_")
fP2_Label = %P2_Label%
	If RegExMatch(P2_FuncLabel, "Send")
		{
		P2_SendLabel := % P2_SendKeystroke
		P2_FuncLabel := SubStr(P2_FuncLabel, 1, 8)
		If (P2_OverrideLabel != "")
			fP2_Label = %P2_OverrideLabel%
		}
	If P2_FuncLabel = Run_Program
		{
		If (P2_OverrideLabel != "")
			fP2_Label = %P2_OverrideLabel%
		}
P3_FuncLabel := RegExReplace(P3_Label, " ", "_")
fP3_Label = %P3_Label%
	If RegExMatch(P3_FuncLabel, "Send")
		{
		P3_SendLabel := % P3_SendKeystroke
		P3_FuncLabel := SubStr(P3_FuncLabel, 1, 8)
		If (P3_OverrideLabel != "")
			fP3_Label = %P3_OverrideLabel%
		}
	If P3_FuncLabel = Run_Program
		{
		If (P3_OverrideLabel != "")
			fP3_Label = %P3_OverrideLabel%
		}
P4_FuncLabel := RegExReplace(P4_Label, " ", "_")
fP4_Label = %P4_Label%
	If RegExMatch(P4_FuncLabel, "Send")
		{
		P4_SendLabel := % P4_SendKeystroke
		P4_FuncLabel := SubStr(P4_FuncLabel, 1, 8)
		If (P4_OverrideLabel != "")
			fP4_Label = %P4_OverrideLabel%
		}
	If P4_FuncLabel = Run_Program
		{
		If (P4_OverrideLabel != "")
			fP4_Label = %P4_OverrideLabel%
		}
P5_FuncLabel := RegExReplace(P5_Label, " ", "_")
fP5_Label = %P5_Label%
	If RegExMatch(P5_FuncLabel, "Send")
		{
		P5_SendLabel := % P5_SendKeystroke
		P5_FuncLabel := SubStr(P5_FuncLabel, 1, 8)
		If (P5_OverrideLabel != "")
			fP5_Label = %P5_OverrideLabel%
		}
	If P5_FuncLabel = Run_Program
		{
		If (P5_OverrideLabel != "")
			fP5_Label = %P5_OverrideLabel%
		}
P6_FuncLabel := RegExReplace(P6_Label, " ", "_")
fP6_Label = %P6_Label%
	If RegExMatch(P6_FuncLabel, "Send")
		{
		P6_SendLabel := % P6_SendKeystroke
		P6_FuncLabel := SubStr(P6_FuncLabel, 1, 8)
		If (P6_OverrideLabel != "")
			fP6_Label = %P6_OverrideLabel%
		}
	If P6_FuncLabel = Run_Program
		{
		If (P6_OverrideLabel != "")
			fP6_Label = %P6_OverrideLabel%
		}	
Rnull_FuncLabel := RegExReplace(Rnull_Label, " ", "_")
fRnull_Label = %Rnull_Label%
	If RegExMatch(Rnull_FuncLabel, "Send")
		{
		Rnull_SendLabel := % Rnull_SendKeystroke
		Rnull_FuncLabel := SubStr(Rnull_FuncLabel, 1, 8)
		If (Rnull_OverrideLabel != "")
			fRnull_Label = %Rnull_OverrideLabel%
		}
	If Rnull_FuncLabel = Run_Program
		{
		If (Rnull_OverrideLabel != "")
			fRnull_Label = %Rnull_OverrideLabel%
		}
R1_FuncLabel := RegExReplace(R1_Label, " ", "_")
fR1_Label = %R1_Label%
	If RegExMatch(R1_FuncLabel, "Send")
		{
		R1_SendLabel := % R1_SendKeystroke
		R1_FuncLabel := SubStr(R1_FuncLabel, 1, 8)
		If (R1_OverrideLabel != "")
			fR1_Label = %R1_OverrideLabel%
		}
	If R1_FuncLabel = Run_Program
		{
		If (R1_OverrideLabel != "")
			fR1_Label = %R1_OverrideLabel%
		}
R2_FuncLabel := RegExReplace(R2_Label, " ", "_")
fR2_Label = %R2_Label%
	If RegExMatch(R2_FuncLabel, "Send")
		{
		R2_SendLabel := % R2_SendKeystroke
		R2_FuncLabel := SubStr(R2_FuncLabel, 1, 8)
		If (R2_OverrideLabel != "")
			fR2_Label = %R2_OverrideLabel%
		}
	If R2_FuncLabel = Run_Program
		{
		If (R2_OverrideLabel != "")
			fR2_Label = %R2_OverrideLabel%
		}
R3_FuncLabel := RegExReplace(R3_Label, " ", "_")
fR3_Label = %R3_Label%
	If RegExMatch(R3_FuncLabel, "Send")
		{
		R3_SendLabel := % R3_SendKeystroke
		R3_FuncLabel := SubStr(R3_FuncLabel, 1, 8)
		If (R3_OverrideLabel != "")
			fR3_Label = %R3_OverrideLabel%
		}
	If R3_FuncLabel = Run_Program
		{
		If (R3_OverrideLabel != "")
			fR3_Label = %R3_OverrideLabel%
		}
R4_FuncLabel := RegExReplace(R4_Label, " ", "_")
fR4_Label = %R4_Label%
	If RegExMatch(R4_FuncLabel, "Send")
		{
		R4_SendLabel := % R4_SendKeystroke
		R4_FuncLabel := SubStr(R4_FuncLabel, 1, 8)
		If (R4_OverrideLabel != "")
			fR4_Label = %R4_OverrideLabel%
		}
	If R4_FuncLabel = Run_Program
		{
		If (R4_OverrideLabel != "")
			fR4_Label = %R4_OverrideLabel%
		}
R5_FuncLabel := RegExReplace(R5_Label, " ", "_")
fR5_Label = %R5_Label%
	If RegExMatch(R5_FuncLabel, "Send")
		{
		R5_SendLabel := % R5_SendKeystroke
		R5_FuncLabel := SubStr(R5_FuncLabel, 1, 8)
		If (R5_OverrideLabel != "")
			fR5_Label = %R5_OverrideLabel%
		}
	If R5_FuncLabel = Run_Program
		{
		If (R5_OverrideLabel != "")
			fR5_Label = %R5_OverrideLabel%
		}
R6_FuncLabel := RegExReplace(R6_Label, " ", "_")
fR6_Label = %R6_Label%
	If RegExMatch(R6_FuncLabel, "Send")
		{
		R6_SendLabel := % R6_SendKeystroke
		R6_FuncLabel := SubStr(R6_FuncLabel, 1, 8)
		If (R6_OverrideLabel != "")
			fR6_Label = %R6_OverrideLabel%
		}
	If R6_FuncLabel = Run_Program
		{
		If (R6_OverrideLabel != "")
			fR6_Label = %R6_OverrideLabel%
		}

		
		
		
		
		


	

		
UsePieActivateKey = $*%PieActivateKey%
UsePieDeactivateKey = $*%PieActivateKey% up
Hotkey, IfWinActive,
Hotkey,%UsePieActivateKey%,PieActivate
Hotkey,%UsePieDeactivateKey%,ReleasePieKey

If ShowToolTips = 1
	{
	SetUpGDIP(BitmapScreenRight,BitmapScreenBottom)
		StartDrawGDIP()
		ClearDrawGDIP()	
		Gdip_SetSmoothingMode(G, 4)
				Gdip_SetSmoothingMode(G, 4)
				piekeytextstart :=  % "Pie Activation Key is " piekeysetting
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, piekeytextstart, textoptions, Segoe UI)
				EndDrawGDIP()
	}


;---------------------------------------
;    Tabletpressure Reading Script
;---------------------------------------
FileReadLine, PenTabletActive, %A_ScriptDir%\Resources\settingsfile.txt, 7

Gui, +AlwaysOnTop -SysMenu +Owner +LastFound  ; +Owner avoids a taskbar button.
MyGui := WinExist()

If PenTabletActive = 1
	{
tabletPressure:=0 
TabletInit(MyGui)
DllCall("FreeLibrary", UInt, hwintab32)
return
	}

TABLETPACKET(wParam, lParam)
{
	global
	VarSetCapacity(packet, 4, 0) ; pressure only = size 4
	; we get a packet that exactly fits in size to the data we requested with lcPktData, in this case only pressure
	hWTPacket := DllCall( "wintab32\WTPacket", "int", lParam, "int", wParam, "int", &packet)
	tabletPressure := NumGet(packet, 0, "int") ; pressure -> 0 offset
	VarSetCapacity(packet, 0) ; free packet memory

}

TabletInit(receivingHwnd)
{

	; global
	
	; offsets into structure passed to WTOpenA 
	lcOptions := 40
	lcMsgBase := 52 ; windows message ID
	lcPktData := 64 ; requested items delivered in package
	lcPktMode := 68
	
	; options for WTOpenA call
	CXO_MESSAGES := 0x0004 ; request windows messages
	CXO_SYSTEM := 0x0001 ; pass packet on to system
	
	; items that can be requested to be received in the packets, we use only PK_NORMAL_PRESSURE
	PK_CURSOR := 0x0020	; reporting cursor 
	PK_BUTTONS := 0x0040 ; button information 
	PK_X := 0x0080 ; x axis 
	PK_Y := 0x0100 ; y axis
	PK_Z := 0x0200 ; z axis
	PK_NORMAL_PRESSURE := 0x0400 ; normal or tip pressure 
	PK_TANGENT_PRESSURE := 0x0800 ; tangential or barrel pressure 
	PK_ORIENTATION := 0x1000 ; orientation info: tilts 
	PK_ROTATION := 0x2000 ; rotation info; 1.1 
	
	; hwintab32 :=	DllCall( "LoadLibrary", "str", "wintab32" )
	VarSetCapacity(logcontext, 172, 0)
	hWTInfoA := DllCall( "wintab32\WTInfoA", "int", 3, "int", 0, "int", &logcontext )
	MsgBase := NumGet(logcontext, lcMsgBase, "UInt")
	Options := NumGet(logcontext, lcOptions, "UInt")
	NumPut(Options|CXO_MESSAGES|CXO_SYSTEM, logcontext, lcOptions, "UInt") ; request to get windows messages
	NumPut(PK_NORMAL_PRESSURE, logcontext, lcPktData, "UInt") ; request only pressure, no XY/buttons
	NumPut(0, logcontext, lcPktMode, "UInt")
	hWTOpenA := DllCall( "wintab32\WTOpenA", "int", receivingHwnd, "int", &logcontext, "int", -0x01 )
	OnMessage(MsgBase, "TABLETPACKET")
}


;-------------------------------------------------------
; Thanks to tic (Tariq Porter) for his GDI+ Library
; http://www.autohotkey.com/forum/viewtopic.php?t=32238
;-------------------------------------------------------





; #IfWinActive ahk_exe Photoshop.exe
;Change the line below to the class of the program this pie menu is for,
; #IfWinActive ahk_class Photoshop 
{



PieKillSwitch:
	{
	StartDrawGDIP()
	ClearDrawGDIP()
	EndDrawGDIP()
	return
	}

	
~^d::
	PressDeselect := 0
Return


~Enter:
	PressEnter := False
Return

PieActivate:
	{
	BlockLButton := 1
	PieMode := 0
	
	If SendAltUp = 1
		{
		send, {Alt Up}
		SendAltUp := 0
		}
	If PressEnter = 1
		{
		send, {enter}
		PressEnter := False
		}
	If PressDeselect = 1
		{
		send, ^d
		PressDeselect := 0
		}
		
	pie_pressed := "D"
	
	SetUpGDIP(BitmapScreenRight,BitmapScreenBottom)
	StartDrawGDIP()
	ClearDrawGDIP()	
	Gdip_SetSmoothingMode(G, 4)
	
	MouseGetPos, MXi, MYi
	TY := MYi+40
		
	Loop
		{
		MouseGetPos, MXf, MYf
		
		
		;Add Intermediate Points
		If  A_Index > 1
			{
			MXm := (( MXf + MXt ) / 2)
			MYm := (( MYf + MYt ) / 2)
			distm := Sqrt((MXm - MXi)**2 + (MYm - MYi)**2)
			}
		
		
		
		
		;Previous Frame Set
		MXt := MXf
		MYt := MYf
		
		;Calculate Distance
		dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
		;Calculate Angle
		YN := 0
		If (MYf - MYi) > 0
			YN := 180
		If (MYf - MYi) != 0
			{
			angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
			}
		Else  ; this didnt have parenthesis before
			{			
			If (MXf > MXi)
				angle := 0
			Else
				angle := 180			
			}


		If GetKeyState("Alt", "P")
			PieMode := 0
		If GetKeyState("Shift", "P") &&  (PieNumberSetting > 1)
			PieMode := 1
		If GetKeyState("Control", "P") && (PieNumberSetting > 2)
			PieMode := 2
				
		If PieMode = 0
			{
			pBackground = %A_ScriptDir%\Resources\1PieMenu\BMenuBackground.png
			If (dist < PieMenuSize)
				{
				pBitmap := Gdip_CreateBitmapFromFile(Bnull_Image)
				If (MethodtoShift between 2 and 3) && ((TopHovered + BottomHovered) = 2) && (PieNumberSetting > 1)
					{
					TopHovered := 0
					BottomHovered := 0
					MiddleLeft := 0
					If (MethodtoShift = 2) && (PieNumberSetting > 2)
						{
						PieMode := 2
						Goto, RedPie
						}
					Else
						{
						PieMode := 1
						Goto PurplePie
						}
					}
				If (MethodtoShift < 3) && (MiddleLeft = 1) && (PieNumberSetting > 1)
					{
					MiddleLeft := 0
					TopHovered := 0
					BottomHovered := 0
					PieMode := 1
					Goto PurplePie
					}
				TopHovered := 0
				BottomHovered := 0
				Goto PSDrawPie
				}
			If (distm < PieMenuSize)
				{
				If (MethodtoShift between 2 and 3) && ((TopHovered + BottomHovered) = 2) && (PieNumberSetting > 1)
					{
					TopHovered := 0
					BottomHovered := 0
					MiddleLeft := 0
					If (MethodtoShift = 2) && (PieNumberSetting > 2)
						{
						PieMode := 2
						Goto, RedPie
						}
					Else
						{
						PieMode := 1
						Goto PurplePie
						}
					}
				If (MethodtoShift < 3) && (MiddleLeft = 1) && (PieNumberSetting > 1)
					{
					TopHovered := 0
					BottomHovered := 0
					PieMode := 1
					Goto PurplePie
					}
				}
			If (dist !< PieMenuSize) && (MethodtoShift < 3)
				{
				MiddleLeft := 1
				}
			If angle between 0 and 60
				{
				pBitmap := Gdip_CreateBitmapFromFile(B1_Image)
				Goto PSDrawPie
				}
			If angle between 60 and 120 ;Top
				{
				pBitmap := Gdip_CreateBitmapFromFile(B2_Image)
				TopHovered := 1
				Goto PSDrawPie
				}
			If angle between 120 and 180
				{
				pBitmap := Gdip_CreateBitmapFromFile(B3_Image)
				Goto PSDrawPie
				}
			If angle between 180 and 240
				{
				pBitmap := Gdip_CreateBitmapFromFile(B4_Image)
				Goto PSDrawPie
				}
			If angle between 240 and 300 ;Bottom
				{
				pBitmap := Gdip_CreateBitmapFromFile(B5_Image)
				BottomHovered := 1
				Goto PSDrawPie
				}
			If angle between 300 and 360
				{
				pBitmap := Gdip_CreateBitmapFromFile(B6_Image)
				Goto PSDrawPie
				}
			}
		PurplePie:
		If PieMode = 1
			{
			pBackground = %A_ScriptDir%\Resources\1PieMenu\PMenuBackground.png
			If (dist < PieMenuSize)
				{
				If (MethodtoShift < 4) && ((TopHovered + BottomHovered) = 2) && (PieNumberSetting > 2)
					{
					TopHovered := 0
					BottomHovered := 0
					PieMode := 2
					Goto, RedPie
					}
				TopHovered := 0
				BottomHovered := 0
				pBitmap := Gdip_CreateBitmapFromFile(Pnull_Image)
				Goto PSDrawPie
				}
			If (distm < PieMenuSize)
				{
				If (MethodtoShift < 4) && ((TopHovered + BottomHovered) = 2) && (PieNumberSetting > 2)
					{
					TopHovered := 0
					BottomHovered := 0
					PieMode := 2
					Goto, RedPie
					}
				TopHovered := 0
				BottomHovered := 0
				}
			If (dist !< PieMenuSize) && (MethodtoShift = 1)
				{
				TopHovered := 1
				BottomHovered := 1
				}
			If angle between 0 and 60
				{
				pBitmap := Gdip_CreateBitmapFromFile(P1_Image)
				Goto PSDrawPie
				}
			If angle between 60 and 120
				{
				pBitmap := Gdip_CreateBitmapFromFile(P2_Image)
				TopHovered := 1
				Goto PSDrawPie
				}
			If angle between 120 and 180
				{
				pBitmap := Gdip_CreateBitmapFromFile(P3_Image)
				Goto PSDrawPie
				}
			If angle between 180 and 240
				{
				pBitmap := Gdip_CreateBitmapFromFile(P4_Image)
				Goto PSDrawPie
				}
			If angle between 240 and 300
				{
				pBitmap := Gdip_CreateBitmapFromFile(P5_Image)
				BottomHovered := 1
				Goto PSDrawPie
				}
			If angle between 300 and 360
				{
				pBitmap := Gdip_CreateBitmapFromFile(P6_Image)
				Goto PSDrawPie
				}
			}
		RedPie:
		If PieMode > 1
			{
			pBackground = %A_ScriptDir%\Resources\1PieMenu\RMenuBackground.png
			If (dist < PieMenuSize)
				{
				pBitmap := Gdip_CreateBitmapFromFile(Rnull_Image)
				Goto PSDrawPie
				}
			If angle between 0 and 60
				{
				pBitmap := Gdip_CreateBitmapFromFile(R1_Image)
				Goto PSDrawPie
				}
			If angle between 60 and 120
				{
				pBitmap := Gdip_CreateBitmapFromFile(R2_Image)
				Goto PSDrawPie
				}
			If angle between 120 and 180
				{
				pBitmap := Gdip_CreateBitmapFromFile(R3_Image)
				Goto PSDrawPie
				}
			If angle between 180 and 240
				{
				pBitmap := Gdip_CreateBitmapFromFile(R4_Image)
				Goto PSDrawPie
				}
			If angle between 240 and 300
				{
				pBitmap := Gdip_CreateBitmapFromFile(R5_Image)
				Goto PSDrawPie
				}
			If angle between 300 and 360
				{
				pBitmap := Gdip_CreateBitmapFromFile(R6_Image)
				Goto PSDrawPie
				}
			}

		PSDrawPie:
		Gdip_DrawImage(G, pBitmap, MXi-PieMenuOffset, MYi-PieMenuOffset, PieMenuScale, PieMenuScale)
		; Gdip_DrawImage(G, pBitmap, MXm, MYm, 10, 10)   For Testing Midpoint mouse
		Gdip_DisposeImage(pBitmap)
		
						
		If A_Index > %ShowLabelDelay%
			{
			pBitmap := Gdip_CreateBitmapFromFile(pBackground)
			Gdip_DrawImage(G, pBitmap, MXi-50, MYi+52, 100, 18)
			Gdip_DrawImage(G, pBitmap, MXi-50, MYi-68, 100, 18)
			Gdip_DrawImage(G, pBitmap, MXi-140, MYi+16, 100, 18)
			Gdip_DrawImage(G, pBitmap, MXi+40, MYi+16, 100, 18)
			Gdip_DrawImage(G, pBitmap, MXi-140, MYi-32, 100, 18)
			Gdip_DrawImage(G, pBitmap, MXi+40, MYi-32, 100, 18)
			Gdip_DisposeImage(pBitmap)
			
			If PieMode = 0
				{
				If ShowToolTips = 1 
					{
									
					TXo := A_ScreenWidth / 2
					TYo := A_ScreenHeight - 100
					textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
					Gdip_TextToGraphics(G, MethodtoShiftText, textoptions, Segoe UI)
					}
				;TopRight
				TXo := (MXi + 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB1_Label, textoptions, Segoe UI)
				;Top
				TXo := (MXi)
				TYo := (MYi - 65)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB2_Label, textoptions, Segoe UI)
				;TopLeft
				TXo := (MXi - 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB3_Label, textoptions, Segoe UI)
				;BottomLeft
				TXo := (MXi - 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB4_Label, textoptions, Segoe UI)
				;Bottom
				TXo := (MXi)
				TYo := (MYi + 55)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB5_Label, textoptions, Segoe UI)
				;BottomRight
				TXo := (MXi + 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fB6_Label, textoptions, Segoe UI)
				}
			If PieMode = 1
				{
				If ShowToolTips = 1 
					{
									
					TXo := A_ScreenWidth / 2
					TYo := A_ScreenHeight - 100
					textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
					Gdip_TextToGraphics(G, MethodtoShiftText, textoptions, Segoe UI)
					}
				;TopRight
				TXo := (MXi + 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP1_Label, textoptions, Segoe UI)
				;Top
				TXo := (MXi)
				TYo := (MYi - 65)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP2_Label, textoptions, Segoe UI)
				;TopLeft
				TXo := (MXi - 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP3_Label, textoptions, Segoe UI)
				;BottomLeft
				TXo := (MXi - 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP4_Label, textoptions, Segoe UI)
				;Bottom
				TXo := (MXi)
				TYo := (MYi + 55)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP5_Label, textoptions, Segoe UI)
				;BottomRight
				TXo := (MXi + 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fP6_Label, textoptions, Segoe UI)
				}
			If PieMode > 1
				{
				;TopRight
				TXo := (MXi + 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR1_Label, textoptions, Segoe UI)
				;Top
				TXo := (MXi)
				TYo := (MYi - 65)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR2_Label, textoptions, Segoe UI)
				;TopLeft
				TXo := (MXi - 91)
				TYo := (MYi - 29)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR3_Label, textoptions, Segoe UI)
				;BottomLeft
				TXo := (MXi - 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR4_Label, textoptions, Segoe UI)
				;Bottom
				TXo := (MXi)
				TYo := (MYi + 55)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR5_Label, textoptions, Segoe UI)
				;BottomRight
				TXo := (MXi + 91)
				TYo := (MYi + 19)
				textoptions = x%TXo% y%TYo% Center Vcenter cffFFFFFF r4 s12
				Gdip_TextToGraphics(G, fR6_Label, textoptions, Segoe UI)
				}
			}
			
		EndDrawGDIP()
		StartDrawGDIP()
		
		
		
		
		
		If pie_pressed != D
			{
			MouseGetPos, MXf, MYf
			dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
		
			YN := 0
			If (MYf - MYi) > 0
				YN := 180
			If (MYf - MYi) != 0
				{
				angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
				}
			Else
				{
				If (MXf - MXi) > 0
					angle := 0
				Else
					angle := 180			
				}
			Break
			}
			Sleep, 6
		}
	TopHovered := 0
	BottomHovered := 0
	MiddleLeft := 0
	ClearDrawGDIP()
	EndDrawGDIP()

		If PieMode = 0
			{
			If (dist < 22)
				{
				psfunc = %Bnull_FuncLabel%
				If psfunc = SendKey
					SendKeys = %Bnull_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %Bnull_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 0 and 60
				{
				psfunc = %B1_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B1_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B1_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 60 and 120 ;Top
				{
				psfunc = %B2_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B2_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B2_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 120 and 180
				{
				psfunc = %B3_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B3_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B3_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 180 and 240
				{
				psfunc = %B4_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B4_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B4_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 240 and 300 ;Bottom
				{
				psfunc = %B5_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B5_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B5_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 300 and 360
				{
				psfunc = %B6_FuncLabel%
				If psfunc = SendKey
					SendKeys = %B6_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %B6_ExeFilePath%
				Goto %psfunc%
				}
			}
		If PieMode = 1
			{
			If (dist < 22)
				{
				psfunc = %Pnull_FuncLabel%
				If psfunc = SendKey
					SendKeys = %Pnull_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %Pnull_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 0 and 60
				{
				psfunc = %P1_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P1_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P1_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 60 and 120 ;Top
				{
				psfunc = %P2_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P2_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P2_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 120 and 180
				{
				psfunc = %P3_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P3_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P3_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 180 and 240
				{
				psfunc = %P4_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P4_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P4_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 240 and 300 ;Bottom
				{
				psfunc = %P5_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P5_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P5_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 300 and 360
				{
				psfunc = %P6_FuncLabel%
				If psfunc = SendKey
					SendKeys = %P6_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %P6_ExeFilePath%
				Goto %psfunc%
				}
			}
		If PieMode > 1
			{
			If (dist < 22)
				{
				psfunc = %Rnull_FuncLabel%
				If psfunc = SendKey
					SendKeys = %Rnull_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %Rnull_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 0 and 60
				{
				psfunc = %R1_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R1_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R1_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 60 and 120
				{
				psfunc = %R2_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R2_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R2_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 120 and 180
				{
				psfunc = %R3_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R3_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R3_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 180 and 240
				{
				psfunc = %R4_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R4_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R4_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 240 and 300
				{
				psfunc = %R5_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R5_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R5_ExeFilePath%
				Goto %psfunc%
				}
			If angle between 300 and 360
				{
				psfunc = %R6_FuncLabel%
				If psfunc = SendKey
					SendKeys = %R6_SendLabel%
				If psfunc = Run_Program
					ProgramtoRun = %R6_ExeFilePath%
				Goto %psfunc%
				}
			}
	

	;------------------------------------------------------------------------------------------------------
	;Photoshop Pie Functions!!!
	;
	; To reference Photoshop tool names, go to https://autohotkey.com/boards/viewtopic.php?t=15078
	; To Make your own Functions, Make a reasonable label (like <13 characters) and replace spaces with "_"
	; Make function in that label (Remember to use BlockLButton := 0 to allow it to work after).
	; Loop at RectS Move to see how the pie key is sensed, it had to be this way because of the weird way some
	; tablets send keypresses.
	;------------------------------------------------------------------------------------------------------
	
	
	;Template to create new functions below!  Get out of here if you're using notepad, at least use Notepad++ (and the ahk language https://autohotkey.com/boards/viewtopic.php?t=50  )  Also check out some of the other functions for reference or the YouTube video where I explain them.
	
	
	; My_Cool_AHK_Function:  ;This label corresponds to the name you put in the Functions.txt file.
		; {
		; BlockRButton := 1     ; This blocks RMB from interacting with the program (not this script though)
		;	;Check out the forum post reply by Suresh on how to use the COM commands to geet the active tools in photoshop.  https://autohotkey.com/boards/viewtopic.php?t=15078
		; appRef := ComObjActive( "Photoshop.Application" )
		; PrevTool = % appRef.CurrentTool  ;Current tool is stored to be switched to at the end of the function.
		;   ;This IF statement and it's TRUW function display the tooltips at the bottom of the screen
		 ; If ShowToolTips = 1 
			; {
			; StartDrawGDIP()
			; ClearDrawGDIP()	
			; Gdip_SetSmoothingMode(G, 4)
			; TXo := A_ScreenWidth / 2
			; TYo := A_ScreenHeight - 100
			; textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
			; Gdip_TextToGraphics(G, "Press and Release Pie Key to Unblock mouse buttons", textoptions, Segoe UI)
			; EndDrawGDIP()
			; }

			;Put in functions which happen after selection
			
		;	;These lines of code act as a 'KeyWait' for the Pie Key, (or LMB, which you can take out).
		; pie_pressed := "D"
		; loop
			; {
			; sleep, 6
			; If pie_pressed = U
				; Break
			; If GetKeyState("LButton", "P")
				; Break
			; }
		
		;Put in function that happen after the Pie Key is pressed and released.
		
		;	;These lines of code erase the tooltip and unblock the Left and Right mouse buttons.
		; StartDrawGDIP()
		; ClearDrawGDIP()
		; EndDrawGDIP()
		; BlockRButton := 0 
		; BlockLButton := 0 
		; appRef.CurrentTool := PrevTool    ;Switch back to the Previous Tool
		; Return  
		; }
	No_Action:
		{
		BlockLButton := 0
		Return
		}
	SendKey:
		{
		;Handles any User Hotkeys denoted in the PieMenuSettings.
		BlockLButton := 0
		send, %SendKeys%
		Return
		}
	Run_Program:
		{
		BlockLButton := 0
		Run, % ProgramtoRun
		Return
		}
	Pie_Menu_Settings:
		{
		BlockLButton := 0
		Run, "%A_ScriptDir%\PieMenuSettings.ahk" Restart
		exitapp
		}
	B/E_Toggle:
		;Selects Brush and Toggles Eraser when Repeated
		{
		appRef := ComObjActive( "Photoshop.Application" )
	If (appRef.CurrentTool = ActiveBrush)
		{
		appRef := ComObjActive( "Photoshop.Application" )
		appRef.CurrentTool := "eraserTool"
		}
	Else
		{
		appRef := ComObjActive( "Photoshop.Application" )
		appRef.CurrentTool := ActiveBrush
		}
		BlockLButton := 0
		Return
		}
	Change_Active_Brush:
		{
		BlockRButton := 1
		pie_pressed := "D"
		
		SetUpGDIP(BitmapScreenRight,BitmapScreenBottom)
		StartDrawGDIP()
		ClearDrawGDIP()	
		Gdip_SetSmoothingMode(G, 4)
		
		Loop
			{
			MouseGetPos, MXf, MYf
			;Calculate Distance
			dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
			;Calculate Angle
			YN := 0
			If (MYf - MYi) > 0
				YN := 180
			If (MYf - MYi) != 0
				angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
			Else 
				{			
				If (MXf > MXi)
					angle := 0
				Else
					angle := 180			
				}
			If (dist < 30)
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\SelM.png")
				Goto, BrushPie
				}
			If angle between 0 and 60
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel1.png")
				Goto, BrushPie
				}
			If angle between 60 and 120
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel2.png")
				Goto, BrushPie
				}
			If angle between 120 and 180
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel3.png")
				Goto, BrushPie
				}
			If angle between 180 and 240
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel4.png")
				Goto, BrushPie
				}
			If angle between 240 and 300
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel5.png")
				Goto, BrushPie
				}
			If angle between 300 and 360
				{
				pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\BrushSelect\Sel6.png")
				Goto, BrushPie
				}
			BrushPie:
			Gdip_DrawImage(G, pBitmap, MXi-60, MYi-60, 119, 119)
			Gdip_DisposeImage(pBitmap)
			
			EndDrawGDIP()
			StartDrawGDIP()
			
			If pie_pressed != D
				{
				MouseGetPos, MXf, MYf
					dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
		
					YN := 0
					If (MYf - MYi) > 0
						YN := 180
					If (MYf - MYi) != 0
						angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
					Else
						{
						If (MXf - MXi) > 0
							angle := 0
						Else
							angle := 180			
						}
				Break
				}
			 sleep, 20
			}
		ClearDrawGDIP()
		EndDrawGDIP()
		If (dist < 30)
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "paintbrushTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 0 and 60
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "colorReplacementBrushTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 60 and 120
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "wetBrushTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 120 and 180
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "smudgeTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 180 and 240
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "historyBrushTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 240 and 300
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "artBrushTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		If angle between 300 and 360
			{
			appRef := ComObjActive( "Photoshop.Application" )
			ActiveBrush := "pencilTool"
			appRef.CurrentTool := ActiveBrush
			BlockLButton := 0
			BlockRButton := 0
			Return
			}
		BlockLButton := 0
		BlockRButton := 0
		Return
		}
	Shift+Drag:
		{
		BlockLButton := 0
		If ShowToolTips = 1
			{
			StartDrawGDIP()
			ClearDrawGDIP()	
			
			Gdip_SetSmoothingMode(G, 4)
			
			TXo := A_ScreenWidth / 2
			TYo := A_ScreenHeight - 100
			textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
			Gdip_TextToGraphics(G, "Shift is held Down, Disengaged after next click/draw or if 'Pie Key' is pressed", textoptions, Segoe UI)
			EndDrawGDIP()
			}
	
		pie_pressed := "D"
		loop
			{
			Sleep, 10
			if tabletPressure > 0
				{
				sleep, 10
				send, {Shift Down}
				loop
					{
					sleep, 10
					if tabletPressure = 0
						Break 2
					}
				}
			if GetKeyState("LButton", "P")
				{
				sleep, 10
				send, {Shift Down}
				loop
					{
					sleep, 10
					If !GetKeyState("LButton", "P")
						Break 2
					}
				}
			if GetKeyState("RButton", "P")
				Goto, PieKillSwitch	
			if pie_pressed = U
				Goto, PieKillSwitch
			}
		pie_pressed := "U"
		send, {Shift Up}
		StartDrawGDIP()
		ClearDrawGDIP()
		EndDrawGDIP()
		Return
		}
	RectS_Move:
		{
		;Rect Marquee and Move Selection, click Pie Activate button to cancel selection.
		;To confirm and deselect the selection, you can click the Pie activation key again.
		If ShowToolTips = 1
			{
			StartDrawGDIP()
			ClearDrawGDIP()	
			
			Gdip_SetSmoothingMode(G, 4)
			
			TXo := A_ScreenWidth / 2
			TYo := A_ScreenHeight - 100
			textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
			Gdip_TextToGraphics(G, "Press and Release 'Pie Key' to cancel 'move after selection'", textoptions, Segoe UI)
			EndDrawGDIP()
			}
		
		pie_pressed := "D"
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		appRef.CurrentTool := "marqueeRectTool"
		loop
			{
			Sleep, 15
			if tabletPressure > 0
				Goto, PSPenSelectLoop
			if GetKeyState("LButton", "P")
				Goto, PSMouseSelectLoop	
			if GetKeyState("RButton", "P")
				Goto, PieKillSwitch	
			if pie_pressed = U
				Goto, PieKillSwitch
			}
		}
	LassoS_Move:
		{
		;Lasso and Move Selection, click Pie Activate button to cancel selection.  
		;To confirm and deselect the selection, you can click the Pie activation key again.
		
		If ShowToolTips = 1
			{
			StartDrawGDIP()
			ClearDrawGDIP()	
			
			Gdip_SetSmoothingMode(G, 4)
			
			TXo := A_ScreenWidth / 2
			TYo := A_ScreenHeight - 100
			textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
			Gdip_TextToGraphics(G, "Press and Release 'Pie Key' to cancel 'move after selection'", textoptions, Segoe UI)
			EndDrawGDIP()
			}
		
		pie_pressed := "D"
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		appRef.CurrentTool := "lassoTool"
		loop
			{
			Sleep, 15
			if tabletPressure > 0
				Goto, PSPenSelectLoop
			if GetKeyState("LButton", "P")
				Goto, PSMouseSelectLoop	
			if GetKeyState("RButton", "P")
				Goto, PieKillSwitch	
			if pie_pressed = U
				Goto, PieKillSwitch	
			}
		
		Return
		}
	Opacity_Select:
		{
		BlockRButton := 1
		appRef := ComObjActive( "Photoshop.Application" )
		CurrentTool := appRef.CurrentTool
		If CurrentTool in magicWandTool,paintbrushTool,pencilTool,colorReplacementBrushTool,wetBrushTool,cloneStampTool,patternStampTool,historyBrushTool,artBrushTool,eraserTool,backgroundEraserTool,magicEraserTool,bucketTool,blurTool,sharpenTool,smudgeTool,dodgeTool,burnInTool,saturationTool
			{
			pie_pressed := "D"

			SetUpGDIP(BitmapScreenRight,BitmapScreenBottom)
			StartDrawGDIP()
			ClearDrawGDIP()	
			Gdip_SetSmoothingMode(G, 4)
			
			Loop
				{
				MouseGetPos, MXf, MYf
				;Calculate Distance
				dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
				;Calculate Angle
				YN := 0
				If (MYf - MYi) > 0
					YN := 180
				If (MYf - MYi) != 0
					{
					angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
					}
				Else  
					{			
					If (MXf > MXi)
						angle := 0
					Else
						angle := 180			
					}
				If (dist < 35)
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel10.png")
					Goto NumberDrawPie
					}
				If angle between 50 and 90
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel1.png")
					Goto NumberDrawPie
					}
				If angle between 10 and 50
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel2.png")
					Goto NumberDrawPie
					}
				If angle between 290 and 330
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel4.png")
					Goto NumberDrawPie
					}
				If angle between 250 and 290
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel5.png")
					Goto NumberDrawPie
					}
				If angle between 210 and 250
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel6.png")
					Goto NumberDrawPie
					}
				If angle between 170 and 210
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel7.png")
					Goto NumberDrawPie
					}
				If angle between 130 and 170
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel8.png")
					Goto NumberDrawPie
					}
				If angle between 90 and 130
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel9.png")
					Goto NumberDrawPie
					}
				Else
					{
					pBitmap := Gdip_CreateBitmapFromFile(A_ScriptDir . "\Resources\NumberSelect\Sel3.png")
					Goto NumberDrawPie
					}
				NumberDrawPie:
				Gdip_DrawImage(G, pBitmap, MXi-60, MYi-60, 119, 119)
				Gdip_DisposeImage(pBitmap)
				
				If ShowToolTips = 1
					{
					TXo := A_ScreenWidth / 2
					TYo := A_ScreenHeight - 100
					textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
					If A_Index < 2
						{
						toolsettingtiptext := "Press and Release 'Pie Key' to select Opacity ( x10% )"
						If CurrentTool in magicWandTool,colorReplacementBrushTool,backgroundEraserTool,magicEraserTool
							toolsettingtiptext := "Press and Release 'Pie Key' to select Tolerance ( x10% )"
						If CurrentTool in blurTool,sharpenTool,smudgeTool
							toolsettingtiptext := "Press and Release 'Pie Key' to select Strength ( x10% )"
						If CurrentTool in dodgeTool,burnInTool
							toolsettingtiptext := "Press and Release 'Pie Key' to select Exposure ( x10% )"	
						If CurrentTool in saturationTool
							toolsettingtiptext := "Press and Release 'Pie Key' to select Flow ( x10% )"	
						}
					Gdip_TextToGraphics(G, toolsettingtiptext, textoptions, Segoe UI)
					}
				EndDrawGDIP()
				StartDrawGDIP()
				
				If pie_pressed != D
					{
					MouseGetPos, MXf, MYf
						dist := Sqrt((MXf - MXi)**2 + (MYf - MYi)**2)
			
						YN := 0
						If (MYf - MYi) > 0
							YN := 180
						If (MYf - MYi) != 0
							angle := (ATan( (-1 / ((MYf - MYi) / (MXf - MXi)))) * -57.29578) + YN + 90
						Else
							{
							If (MXf - MXi) > 0
								angle := 0
							Else
								angle := 180			
							}
					Break
					}
				 sleep, 20
				}
			ClearDrawGDIP()
			EndDrawGDIP()
			If (dist < 35)
				{
				send, {Enter}1{Enter}{Enter}100{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 50 and 90
				{
				send, {Enter}1{Enter}{Enter}10{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 10 and 50
				{
				send, {Enter}1{Enter}{Enter}20{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 290 and 330
				{
				send, {Enter}1{Enter}{Enter}40{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 250 and 290
				{
				send, {Enter}1{Enter}{Enter}50{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 210 and 250
				{
				send, {Enter}1{Enter}{Enter}60{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 170 and 210
				{
				send, {Enter}1{Enter}{Enter}70{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 130 and 170
				{
				send, {Enter}1{Enter}{Enter}80{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			If angle between 90 and 130
				{
				send, {Enter}1{Enter}{Enter}90{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			Else
				{
				send
				, {Enter}1{Enter}{Enter}30{Enter}
				BlockLButton := 0
				BlockRButton := 0
				Return
				}
			}
		BlockLButton := 0
		BlockRButton := 0
		Return
		}
	Color_Select:
		{
		BlockRButton := 1
		appRef := ComObjActive( "Photoshop.Application" )
		CurrentTool := appRef.CurrentTool
		If	CurrentTool in eyeDropperTool,3DMaterialSelectTool,colorSamplerTool,rulerTool,textAnnoteTool,countTool,spotHealingBrushTool,magicStampTool,redEyeTool,paintbrushTool,pencilTool,colorReplacementBrushTool,wetBrushTool,cloneStampTool,patternStampTool,historyBrushTool,artBrushTool,eraserTool,backgroundEraserTool,magicEraserTool,gradientTool,bucketTool,3DMaterialDropTool,blurTool,sharpenTool,smudgeTool,dodgeTool,burnInTool,saturationTool,penTool,freeformPenTool,curvaturePenTool,addKnotTool,deleteKnotTool,convertKnotTool,typeCreateOrEditTool,typeVerticalCreateOrEditTool,typeVerticalCreateMaskTool,typeCreateMaskTool,pathComponentSelectTool,directSelectTool,rectangleTool,roundedRectangleTool,ellipseTool,polygonTool,lineTool,customShapeTool,handTool,rotateTool,zoomTool
			{
			If ShowToolTips = 1
				{
				StartDrawGDIP()
				ClearDrawGDIP()	
				
				Gdip_SetSmoothingMode(G, 4)
				
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, "Press and Release 'Pie Key' to select Color", textoptions, Segoe UI)
				EndDrawGDIP()
				}
			Send, {Alt Down}{Shift Down}{RButton Down}
			Send, {Alt Up}{Shift Up}
			pie_pressed = "D"
			loop
				{
				sleep, 20
				If pie_pressed = U
					Break
				}
			Send, {RButton Up}
			}
		StartDrawGDIP()
		ClearDrawGDIP()	
		EndDrawGDIP()
		BlockLButton := 0
		BlockRButton := 0
		Return
		}
	Brush_Size:
		{
		;Select Brush Size and Hardness
		BlockRButton := 1
	
		appRef := ComObjActive( "Photoshop.Application" )
		CurrentTool := appRef.CurrentTool
		
		If  CurrentTool in quickSelectTool,spotHealingBrushTool,magicStampTool,paintbrushTool,pencilTool,colorReplacementBrushTool,wetBrushTool,cloneStampTool,patternStampTool,historyBrushTool,artBrushTool,eraserTool,backgroundEraserTool,blurTool,sharpenTool,smudgeTool,dodgeTool,burnInTool,saturationTool
			{
			If ShowToolTips = 1
				{
				StartDrawGDIP()
				ClearDrawGDIP()	
				
				Gdip_SetSmoothingMode(G, 4)
				
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, "Press and Release 'Pie Key' to select size", textoptions, Segoe UI)
				EndDrawGDIP()
				}
			send, {LAlt Down}{RButton Down}
			send, {LAlt Up}
			pie_pressed = "D"
			loop
				{
				sleep, 6
				If pie_pressed = U
					Break
				If GetKeyState("LButton", "P")
					Break
				}
			send, {RButton Up}
			BlockLButton := 0
			BlockRButton := 0
			}
		StartDrawGDIP()
		ClearDrawGDIP()	
		EndDrawGDIP()
		Return
		
		
		}
	New_Layer:
		{
		;Uses the Default Keyboard Shortcut to Create a New Layer
		BlockLButton := 0
		send, ^+n
		Return
		}
	Zoom_then_Hand:
		{
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		PrevTool = % appRef.CurrentTool
		appRef.CurrentTool := "zoomTool"
		If ShowToolTips = 1
				{
				StartDrawGDIP()
				ClearDrawGDIP()	
				
				Gdip_SetSmoothingMode(G, 4)
				
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, "'Pie Key' to go to Hand Tool", textoptions, Segoe UI)
				EndDrawGDIP()
				}
		pie_pressed = "D"
			loop
				{
				sleep, 6
				If pie_pressed = U
					Break
				}
		appRef.CurrentTool := "handTool"
		If ShowToolTips = 1
				{
				StartDrawGDIP()
				ClearDrawGDIP()	
				
				Gdip_SetSmoothingMode(G, 4)
				
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, "'Pie Key' to confirm View and return to previous tool", textoptions, Segoe UI)
				EndDrawGDIP()
				}
		pie_pressed = "D"
			loop
				{
				sleep, 6
				If pie_pressed = U
					Break
				}
		StartDrawGDIP()
		ClearDrawGDIP()	
		EndDrawGDIP()
		appRef.CurrentTool := PrevTool
		Return
		}
	Fast_Eyedropper:
		{
		;Eye Dropper in Pie Center location and go to Previous Tool
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		PrevTool = % appRef.CurrentTool
		appRef.CurrentTool := "eyedropperTool"
		Mouseclick, Left, MXi, MYi, , 0
		appRef.CurrentTool := PrevTool
		Return
		}
	Fill:
		{
		;Fill with Bucket tool in Center of Pie
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		PrevTool = % appRef.CurrentTool
		appRef.CurrentTool := "bucketTool"
		Mouseclick, left, MXi, MYi, , 0
		appRef.CurrentTool := PrevTool
		Return
		}
	Enter_Key:
		{
		; It presses Enter genius
		send {enter}
		PressEnter := 0
		Return
		}
	Delete_Key:
		{
		; *le gasp* it presses the Delete Key
		send {del}
		Return
		}
	Pen/Curve:
		{
		;Pen Tool Selection, Curvature Pen Tool on Repeat Selection
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "penTool"
			appRef.CurrentTool := "curvaturePenTool"
		Else
		appRef.CurrentTool := "penTool"
		Return
		}
	Undo:
		{
		;Undoes stuff, useful for things like... getting things undone.
		BlockLButton := 0
		send, !^z	
		Return
		}
	Hand/Zoom_Tool:
		{
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "zoomTool"
			{
			appRef.CurrentTool := "handTool"
			Return
			}
		Else
		appRef.CurrentTool := "zoomTool"
		Return
		}
	Rotate_View:
		{
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "rotateTool"
			{
			Mouseclick, Left, MXi, MYi, , 0
			send, {enter}0{enter}
			Return
			}
		Else
		appRef.CurrentTool := "rotateTool"
		Return
		}
	Deselect:
		{
		;Why am I writing these tooltip comments?
		BlockLButton := 0
		send, ^d		
		PressDeselect := 0
		Return
		}
	
	;Shift Red Pie Functions Rpsn is no direction and Rps1 is upper-right.  The rest go counter-clockwise from Rps1
	Right_Click:
		{
		;Left Click at Pie center
		BlockLButton := 0
		MouseClick, Right, MXi, MYi, , 0
		WinGetClass, winclass, A
		If winclass != Photoshop
			{
			If ShowToolTips = 1
				{
				StartDrawGDIP()
				ClearDrawGDIP()	
				
				Gdip_SetSmoothingMode(G, 4)
				
				TXo := A_ScreenWidth / 2
				TYo := A_ScreenHeight - 100
				textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
				Gdip_TextToGraphics(G, "Press 'Pie Key' to exit menu", textoptions, Segoe UI)
				EndDrawGDIP()
				}
			Hotkey, IfWinActive, ahk_class PSFloatC
			Hotkey,%UsePieActivateKey%,RMBMenuDeactivate
			Hotkey,%UsePieDeactivateKey%,ReleasePieKey
			pie_pressed := "D"
			loop
				{
				If pie_pressed = U
					{
					send, {enter}
					StartDrawGDIP()
					ClearDrawGDIP()
					EndDrawGDIP()
					Break
					}
				WinGetClass, winclass, A
				If winclass = Photoshop
					{
					; msgbox, out of weird class
					pie_pressed = "U"
					StartDrawGDIP()
					ClearDrawGDIP()
					EndDrawGDIP()
					Break
					}
				sleep, 20
				}
			Return
			}
		PressEnter := 1
		Return
		}
	Marquee:
		{
		BlockLButton := 0
		send, m
		Return
		}
	Move_Tool:
		{
		;Move Tool
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "moveTool"
			{
			send, {Alt Down}
			pie_pressed := "D"	
			SendAltUp := 1
			PressEnter := True
			PressDeselect := 1
			Return
			}
		appRef.CurrentTool := "moveTool"
		PressEnter := True
		Return
		}
	Bucket/Gradient:
		{
		;Bucket Tool, Gradient Tool on Repeated Selection
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "bucketTool"
			appRef.CurrentTool := "gradientTool"
		Else
		appRef.CurrentTool := "bucketTool"
		Return
		}
	Stamp_Tool:
		{
		;Stamp tool
		BlockLButton := 0
		appRef := ComObjActive( "Photoshop.Application" )
		If appRef.CurrentTool = "cloneStampTool"
			{
			send, {AltDown}
			MouseClick, Left, MXi, MYi, , 0
			send, {AltUp}
			}
		Else
			{
			appRef.CurrentTool := "cloneStampTool"
			If ShowToolTips = 1
					{
					StartDrawGDIP()
					ClearDrawGDIP()	
					
					Gdip_SetSmoothingMode(G, 4)
					
					TXo := A_ScreenWidth / 2
					TYo := A_ScreenHeight - 100
					textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
					Gdip_TextToGraphics(G, "Select Function again to Sample Area", textoptions, Segoe UI)
					EndDrawGDIP()
					}
			}
		Return
		}
	Redo:
		{
		;Redo
		BlockLButton := 0
		send, +^z
		Return
		}
	Eyedropper:
		{
		;Eye Dropper to Previous Tool
		BlockLButton := 0
		
		appRef := ComObjActive( "Photoshop.Application" )
		PrevTool = % appRef.CurrentTool
		appRef.CurrentTool := "eyedropperTool"
		pie_pressed := "D"
		loop
			{
			Sleep, 10
			if tabletPressure > 0
				Break
			if GetKeyState("LButton", "P")
				Break
			if GetKeyState("RButton", "P")
				Goto, PieKillSwitch
			if pie_pressed = U
				{
				appRef.CurrentTool := PrevTool
				Goto, PieKillSwitch
				}
			}
		loop
			{
			
			if tabletPressure = 0
				Break
			if !GetKeyState("LButton", "P")
				Break
			Sleep, 10
			}
		pie_pressed := "U"
		appRef.CurrentTool := PrevTool
		Return
		}
	Return	
	
	;Labels for common function references.  Don't Touch.
		PSPenSelectLoop:
		ClearDrawGDIP()
		EndDrawGDIP()
		loop
			{
			sleep 15
			if tabletPressure = 0
				{
				PressDeselect := 1
				Goto, SelectMoveTool
				}
			}
		PSMouseSelectLoop:
		ClearDrawGDIP()
		EndDrawGDIP()
		loop
			{
			sleep 15
			if !GetKeyState("LButton", "P")
				{
				PressDeselect := 1
				Goto, SelectMoveTool
				}
			}
	SelectMoveTool:
		sleep, 100
		pie_pressed := "U"
		appRef := ComObjActive( "Photoshop.Application" )
		appRef.CurrentTool := "moveTool"
		PressEnter := True
		If ShowToolTips = 1
			{
			StartDrawGDIP()
			ClearDrawGDIP()	
			
			Gdip_SetSmoothingMode(G, 4)
			
			TXo := A_ScreenWidth / 2
			TYo := A_ScreenHeight - 100
			textoptions = x%TXo% y%TYo% Center Vcenter cffF6F653 r4 s16
			Gdip_TextToGraphics(G, "Press 'Pie Key' Confirm Transform and Deselect", textoptions, Segoe UI)
			EndDrawGDIP()
			}
	Return

	}

ReleasePieKey:
	pie_pressed := "U"
Return

!^+w::
exitapp

#If MButtonPanning
	{
	MButton::
		{
		Send, {Space down}{LButton down}
		KeyWait, MButton
		Send, {LButton up}{Space up}
		Return
		}
	}

#If BlockRButton
RButton::
Return

#If BlockLButton
LButton::
Return
}



RMBMenuDeactivate:
{
	pie_pressed := "U"
Return
}
!^+w::
exitapp