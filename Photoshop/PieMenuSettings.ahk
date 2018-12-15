#SingleInstance ignore

LocalScriptFolder := "Local Pie Scripts"

FuncLoopCount := 1
loop
	{
	FileReadLine, DropList_FuncSub, %A_ScriptDir%\Resources\Functions.txt, FuncLoopCount
	If ErrorLevel = 1
		break
	If DropList_FuncSub = EndofList
		Break
	DropList_FuncSub := StrSplit(DropList_FuncSub, ":")
	; msgbox, % DropList_FuncSub[1]
	BuildFuncList := SubStr(DropList_FuncSub[1], 3)"|"
	FuncList = %FuncList%%BuildFuncList%
	FuncLoopCount := FuncLoopCount + 1
	; msgbox, %BuildFuncList%
	}
StringTrimRight, FuncList, FuncList, 2
; msgbox, %FuncList%

FileReadLine, PrevPieActivateKeySetting, %A_ScriptDir%\Resources\settingsfile.txt, 1
FuncLoopCount := 1
loop
	{
	FileReadLine, PieKeySub, %A_ScriptDir%\Resources\ValidPieKeys.txt, FuncLoopCount
	If ErrorLevel = 1
		break
	If PrevPieActivateKeySetting = %PieKeySub%
		PrevPieActivateKeyNumber := FuncLoopCount
	BuildPieKeyList := PieKeySub
	PieKeyList = %PieKeyList%|%BuildPieKeyList%
	FuncLoopCount := FuncLoopCount + 1
	}
StringTrimLeft, PieKeyList, PieKeyList, 1
AcceptablePieKeys = %PieKeyList%

FileReadLine, PrevPieLabelDelaySetting , %A_ScriptDir%\Resources\settingsfile.txt, 2
FileReadLine, PrevPieNumberSetting , %A_ScriptDir%\Resources\settingsfile.txt, 3

1PrevPieNumberSetting := 0
2PrevPieNumberSetting := 0
3PrevPieNumberSetting := 0
If PrevPieNumberSetting = 1
	1PrevPieNumberSetting := 1
If PrevPieNumberSetting = 2
	2PrevPieNumberSetting := 1
If PrevPieNumberSetting = 3
	3PrevPieNumberSetting := 1
	
FileReadLine, PrevShiftPieMethod, %A_ScriptDir%\Resources\settingsfile.txt, 4
1PrevShiftPieMethod := 0
2PrevShiftPieMethod := 0
3PrevShiftPieMethod := 0
4PrevShiftPieMethod := 0
If PrevShiftPieMethod = 1
	1PrevShiftPieMethod := 1
If PrevShiftPieMethod = 2
	2PrevShiftPieMethod := 1
If PrevShiftPieMethod = 3
	3PrevShiftPieMethod := 1
If PrevShiftPieMethod = 4
	4PrevShiftPieMethod := 1


FileReadLine, PrevDisplayTooltipsSetting,%A_ScriptDir%\Resources\settingsfile.txt, 5

FileReadLine, PrevPenTabletActive,       %A_ScriptDir%\Resources\settingsfile.txt, 7
FileReadLine, PrevBnull_Label, %A_ScriptDir%\Resources\settingsfile.txt, 8
FileReadLine, PrevBnull_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 9
FileReadLine, PrevBnull_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 10


FileReadLine, PrevB1_Label, %A_ScriptDir%\Resources\settingsfile.txt, 11
FileReadLine, PrevB1_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 12
FileReadLine, PrevB1_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 13
FileReadLine, PrevB2_Label, %A_ScriptDir%\Resources\settingsfile.txt, 14
FileReadLine, PrevB2_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 15
FileReadLine, PrevB2_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 16
FileReadLine, PrevB3_Label, %A_ScriptDir%\Resources\settingsfile.txt, 17
FileReadLine, PrevB3_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 18
FileReadLine, PrevB3_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 19
FileReadLine, PrevB4_Label, %A_ScriptDir%\Resources\settingsfile.txt, 20
FileReadLine, PrevB4_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 21
FileReadLine, PrevB4_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 22
FileReadLine, PrevB5_Label, %A_ScriptDir%\Resources\settingsfile.txt, 23
FileReadLine, PrevB5_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 24
FileReadLine, PrevB5_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 25
FileReadLine, PrevB6_Label, %A_ScriptDir%\Resources\settingsfile.txt, 26
FileReadLine, PrevB6_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 27
FileReadLine, PrevB6_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 28

FileReadLine, PrevPnull_Label, %A_ScriptDir%\Resources\settingsfile.txt, 29
FileReadLine, PrevPnull_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 30
FileReadLine, PrevPnull_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 31
FileReadLine, PrevP1_Label, %A_ScriptDir%\Resources\settingsfile.txt, 32
FileReadLine, PrevP1_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 33
FileReadLine, PrevP1_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 34
FileReadLine, PrevP2_Label, %A_ScriptDir%\Resources\settingsfile.txt, 35
FileReadLine, PrevP2_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 36
FileReadLine, PrevP2_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 37
FileReadLine, PrevP3_Label, %A_ScriptDir%\Resources\settingsfile.txt, 38
FileReadLine, PrevP3_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 39
FileReadLine, PrevP3_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 40
FileReadLine, PrevP4_Label, %A_ScriptDir%\Resources\settingsfile.txt, 41
FileReadLine, PrevP4_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 42
FileReadLine, PrevP4_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 43
FileReadLine, PrevP5_Label, %A_ScriptDir%\Resources\settingsfile.txt, 44
FileReadLine, PrevP5_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 45
FileReadLine, PrevP5_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 46
FileReadLine, PrevP6_Label, %A_ScriptDir%\Resources\settingsfile.txt, 47
FileReadLine, PrevP6_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 48
FileReadLine, PrevP6_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 49

FileReadLine, PrevRnull_Label, %A_ScriptDir%\Resources\settingsfile.txt, 50
FileReadLine, PrevRnull_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 51
FileReadLine, PrevRnull_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 52
FileReadLine, PrevR1_Label, %A_ScriptDir%\Resources\settingsfile.txt, 53
FileReadLine, PrevR1_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 54
FileReadLine, PrevR1_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 55
FileReadLine, PrevR2_Label, %A_ScriptDir%\Resources\settingsfile.txt, 56
FileReadLine, PrevR2_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 57
FileReadLine, PrevR2_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 58
FileReadLine, PrevR3_Label, %A_ScriptDir%\Resources\settingsfile.txt, 59
FileReadLine, PrevR3_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 60
FileReadLine, PrevR3_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 61
FileReadLine, PrevR4_Label, %A_ScriptDir%\Resources\settingsfile.txt, 62
FileReadLine, PrevR4_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 63
FileReadLine, PrevR4_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 64
FileReadLine, PrevR5_Label, %A_ScriptDir%\Resources\settingsfile.txt, 65
FileReadLine, PrevR5_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 66
FileReadLine, PrevR5_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 67
FileReadLine, PrevR6_Label, %A_ScriptDir%\Resources\settingsfile.txt, 68
FileReadLine, PrevR6_OverrideLabel, %A_ScriptDir%\Resources\settingsfile.txt, 69
FileReadLine, PrevR6_SendKeystroke, %A_ScriptDir%\Resources\settingsfile.txt, 70

FileReadLine, Bnull_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,71
FileReadLine,    B1_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,72
FileReadLine,    B2_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,73
FileReadLine,    B3_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,74
FileReadLine,    B4_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,75
FileReadLine,    B5_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,76
FileReadLine,    B6_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,77
FileReadLine, Pnull_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,78
FileReadLine,    P1_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,79
FileReadLine,    P2_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,80
FileReadLine,    P3_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,81
FileReadLine,    P4_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,82
FileReadLine,    P5_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,83
FileReadLine,    P6_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,84
FileReadLine, Rnull_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,85
FileReadLine,    R1_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,86
FileReadLine,    R2_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,87
FileReadLine,    R3_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,88
FileReadLine,    R4_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,89
FileReadLine,    R5_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,90
FileReadLine,    R6_PrevExeFilePath    ,%A_ScriptDir%\Resources\settingsfile.txt,91
FileReadLine,    PrevPieMenuSize       ,%A_ScriptDir%\Resources\settingsfile.txt,92

FileReadLine,  PrevBnull_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,93 
FileReadLine,     PrevB1_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,94 
FileReadLine,     PrevB2_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,95 
FileReadLine,     PrevB3_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,96 
FileReadLine,     PrevB4_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,97 
FileReadLine,     PrevB5_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,98 
FileReadLine,     PrevB6_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,99 
FileReadLine,  PrevPnull_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,100
FileReadLine,     PrevP1_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,101
FileReadLine,     PrevP2_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,102
FileReadLine,     PrevP3_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,103
FileReadLine,     PrevP4_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,104
FileReadLine,     PrevP5_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,105
FileReadLine,     PrevP6_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,106
FileReadLine,  PrevRnull_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,107
FileReadLine,     PrevR1_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,108
FileReadLine,     PrevR2_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,109
FileReadLine,     PrevR3_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,110
FileReadLine,     PrevR4_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,111
FileReadLine,     PrevR5_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,111
FileReadLine,     PrevR6_ClickModifiers,%A_ScriptDir%\Resources\settingsfile.txt,111

If !PrevBnull_ClickModifiers
    PrevBnull_ClickModifiers = "0000"
If !PrevB1_ClickModifiers
    PrevB1_ClickModifiers = "0000"
If !PrevB2_ClickModifiers
    PrevB2_ClickModifiers = "0000"
If !PrevB3_ClickModifiers
    PrevB3_ClickModifiers = "0000"
If !PrevB4_ClickModifiers
    PrevB4_ClickModifiers = "0000"
If !PrevB5_ClickModifiers
    PrevB5_ClickModifiers = "0000"
If !PrevB6_ClickModifiers
    PrevB6_ClickModifiers = "0000"

If !PrevPnull_ClickModifiers
    PrevPnull_ClickModifiers = "0000"
If !PrevP1_ClickModifiers
    PrevP1_ClickModifiers = "0000"
If !PrevP2_ClickModifiers
    PrevP2_ClickModifiers = "0000"
If !PrevP3_ClickModifiers
    PrevP3_ClickModifiers = "0000"
If !PrevP4_ClickModifiers
    PrevP4_ClickModifiers = "0000"
If !PrevP5_ClickModifiers
    PrevP5_ClickModifiers = "0000"
If !PrevP6_ClickModifiers
    PrevP6_ClickModifiers = "0000"

If !PrevRnull_ClickModifiers
    PrevRnull_ClickModifiers = "0000"
If !PrevR1_ClickModifiers
    PrevR1_ClickModifiers = "0000"
If !PrevR2_ClickModifiers
    PrevR2_ClickModifiers = "0000"
If !PrevR3_ClickModifiers
    PrevR3_ClickModifiers = "0000"
If !PrevR4_ClickModifiers
    PrevR4_ClickModifiers = "0000"
If !PrevR5_ClickModifiers
    PrevR5_ClickModifiers = "0000"
If !PrevR6_ClickModifiers
    PrevR6_ClickModifiers = "0000"
	


Bnull_MBCtrl  := substr(PrevBnull_ClickModifiers, 1, 1)
Bnull_MBShift := substr(PrevBnull_ClickModifiers, 2, 1)
Bnull_MBAlt   := substr(PrevBnull_ClickModifiers, 3, 1)
Bnull_MBDrag  := substr(PrevBnull_ClickModifiers, 4, 1)
B1_MBCtrl  := substr(PrevB1_ClickModifiers, 1, 1)
B1_MBShift := substr(PrevB1_ClickModifiers, 2, 1)
B1_MBAlt   := substr(PrevB1_ClickModifiers, 3, 1)
B1_MBDrag  := substr(PrevB1_ClickModifiers, 4, 1)
B2_MBCtrl  := substr(PrevB2_ClickModifiers, 1, 1)
B2_MBShift := substr(PrevB2_ClickModifiers, 2, 1)
B2_MBAlt   := substr(PrevB2_ClickModifiers, 3, 1)
B2_MBDrag  := substr(PrevB2_ClickModifiers, 4, 1)
B3_MBCtrl  := substr(PrevB3_ClickModifiers, 1, 1)
B3_MBShift := substr(PrevB3_ClickModifiers, 2, 1)
B3_MBAlt   := substr(PrevB3_ClickModifiers, 3, 1)
B3_MBDrag  := substr(PrevB3_ClickModifiers, 4, 1)
B4_MBCtrl  := substr(PrevB4_ClickModifiers, 1, 1)
B4_MBShift := substr(PrevB4_ClickModifiers, 2, 1)
B4_MBAlt   := substr(PrevB4_ClickModifiers, 3, 1)
B4_MBDrag  := substr(PrevB4_ClickModifiers, 4, 1)
B5_MBCtrl  := substr(PrevB5_ClickModifiers, 1, 1)
B5_MBShift := substr(PrevB5_ClickModifiers, 2, 1)
B5_MBAlt   := substr(PrevB5_ClickModifiers, 3, 1)
B5_MBDrag  := substr(PrevB5_ClickModifiers, 4, 1)
B6_MBCtrl  := substr(PrevB6_ClickModifiers, 1, 1)
B6_MBShift := substr(PrevB6_ClickModifiers, 2, 1)
B6_MBAlt   := substr(PrevB6_ClickModifiers, 3, 1)
B6_MBDrag  := substr(PrevB6_ClickModifiers, 4, 1)


Pnull_MBCtrl  := substr(PrevPnull_ClickModifiers, 1, 1)
Pnull_MBShift := substr(PrevPnull_ClickModifiers, 2, 1)
Pnull_MBAlt   := substr(PrevPnull_ClickModifiers, 3, 1)
Pnull_MBDrag  := substr(PrevPnull_ClickModifiers, 4, 1)
P1_MBCtrl  := substr(PrevP1_ClickModifiers, 1, 1)
P1_MBShift := substr(PrevP1_ClickModifiers, 2, 1)
P1_MBAlt   := substr(PrevP1_ClickModifiers, 3, 1)
P1_MBDrag  := substr(PrevP1_ClickModifiers, 4, 1)
P2_MBCtrl  := substr(PrevP2_ClickModifiers, 1, 1)
P2_MBShift := substr(PrevP2_ClickModifiers, 2, 1)
P2_MBAlt   := substr(PrevP2_ClickModifiers, 3, 1)
P2_MBDrag  := substr(PrevP2_ClickModifiers, 4, 1)
P3_MBCtrl  := substr(PrevP3_ClickModifiers, 1, 1)
P3_MBShift := substr(PrevP3_ClickModifiers, 2, 1)
P3_MBAlt   := substr(PrevP3_ClickModifiers, 3, 1)
P3_MBDrag  := substr(PrevP3_ClickModifiers, 4, 1)
P4_MBCtrl  := substr(PrevP4_ClickModifiers, 1, 1)
P4_MBShift := substr(PrevP4_ClickModifiers, 2, 1)
P4_MBAlt   := substr(PrevP4_ClickModifiers, 3, 1)
P4_MBDrag  := substr(PrevP4_ClickModifiers, 4, 1)
P5_MBCtrl  := substr(PrevP5_ClickModifiers, 1, 1)
P5_MBShift := substr(PrevP5_ClickModifiers, 2, 1)
P5_MBAlt   := substr(PrevP5_ClickModifiers, 3, 1)
P5_MBDrag  := substr(PrevP5_ClickModifiers, 4, 1)
P6_MBCtrl  := substr(PrevP6_ClickModifiers, 1, 1)
P6_MBShift := substr(PrevP6_ClickModifiers, 2, 1)
P6_MBAlt   := substr(PrevP6_ClickModifiers, 3, 1)
P6_MBDrag  := substr(PrevP6_ClickModifiers, 4, 1)


Rnull_MBCtrl  := substr(PrevRnull_ClickModifiers, 1, 1)
Rnull_MBShift := substr(PrevRnull_ClickModifiers, 2, 1)
Rnull_MBAlt   := substr(PrevRnull_ClickModifiers, 3, 1)
Rnull_MBDrag  := substr(PrevRnull_ClickModifiers, 4, 1)
R1_MBCtrl  := substr(PrevR1_ClickModifiers, 1, 1)
R1_MBShift := substr(PrevR1_ClickModifiers, 2, 1)
R1_MBAlt   := substr(PrevR1_ClickModifiers, 3, 1)
R1_MBDrag  := substr(PrevR1_ClickModifiers, 4, 1)
R2_MBCtrl  := substr(PrevR2_ClickModifiers, 1, 1)
R2_MBShift := substr(PrevR2_ClickModifiers, 2, 1)
R2_MBAlt   := substr(PrevR2_ClickModifiers, 3, 1)
R2_MBDrag  := substr(PrevR2_ClickModifiers, 4, 1)
R3_MBCtrl  := substr(PrevR3_ClickModifiers, 1, 1)
R3_MBShift := substr(PrevR3_ClickModifiers, 2, 1)
R3_MBAlt   := substr(PrevR3_ClickModifiers, 3, 1)
R3_MBDrag  := substr(PrevR3_ClickModifiers, 4, 1)
R4_MBCtrl  := substr(PrevR4_ClickModifiers, 1, 1)
R4_MBShift := substr(PrevR4_ClickModifiers, 2, 1)
R4_MBAlt   := substr(PrevR4_ClickModifiers, 3, 1)
R4_MBDrag  := substr(PrevR4_ClickModifiers, 4, 1)
R5_MBCtrl  := substr(PrevR5_ClickModifiers, 1, 1)
R5_MBShift := substr(PrevR5_ClickModifiers, 2, 1)
R5_MBAlt   := substr(PrevR5_ClickModifiers, 3, 1)
R5_MBDrag  := substr(PrevR5_ClickModifiers, 4, 1)
R6_MBCtrl  := substr(PrevR6_ClickModifiers, 1, 1)
R6_MBShift := substr(PrevR6_ClickModifiers, 2, 1)
R6_MBAlt   := substr(PrevR6_ClickModifiers, 3, 1)
R6_MBDrag  := substr(PrevR6_ClickModifiers, 4, 1)


FileReadLine, isotextNewBnull_Label,%A_ScriptDir%\Resources\Functions.txt, PrevBnull_Label
isotextNewBnull_Label := StrSplit(isotextNewBnull_Label, ":")
txtPrevBnull_Label := % isotextNewBnull_Label[2]
FileReadLine, isotextNewB1_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB1_Label
isotextNewB1_Label := StrSplit(isotextNewB1_Label, ":")
txtPrevB1_Label := % isotextNewB1_Label[2]
FileReadLine, isotextNewB2_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB2_Label
isotextNewB2_Label := StrSplit(isotextNewB2_Label, ":")
txtPrevB2_Label := % isotextNewB2_Label[2]
FileReadLine, isotextNewB3_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB3_Label
isotextNewB3_Label := StrSplit(isotextNewB3_Label, ":")
txtPrevB3_Label := % isotextNewB3_Label[2]
FileReadLine, isotextNewB4_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB4_Label
isotextNewB4_Label := StrSplit(isotextNewB4_Label, ":")
txtPrevB4_Label := % isotextNewB4_Label[2]
FileReadLine, isotextNewB5_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB5_Label
isotextNewB5_Label := StrSplit(isotextNewB5_Label, ":")
txtPrevB5_Label := % isotextNewB5_Label[2]
FileReadLine, isotextNewB6_Label,%A_ScriptDir%\Resources\Functions.txt, PrevB6_Label
isotextNewB6_Label := StrSplit(isotextNewB6_Label, ":")
txtPrevB6_Label := % isotextNewB6_Label[2]
FileReadLine, isotextNewPnull_Label,%A_ScriptDir%\Resources\Functions.txt, PrevPnull_Label
isotextNewPnull_Label := StrSplit(isotextNewPnull_Label, ":")
txtPrevPnull_Label := % isotextNewPnull_Label[2]
FileReadLine, isotextNewP1_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP1_Label
isotextNewP1_Label := StrSplit(isotextNewP1_Label, ":")
txtPrevP1_Label := % isotextNewP1_Label[2]
FileReadLine, isotextNewP2_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP2_Label
isotextNewP2_Label := StrSplit(isotextNewP2_Label, ":")
txtPrevP2_Label := % isotextNewP2_Label[2]
FileReadLine, isotextNewP3_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP3_Label
isotextNewP3_Label := StrSplit(isotextNewP3_Label, ":")
txtPrevP3_Label := % isotextNewP3_Label[2]
FileReadLine, isotextNewP4_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP4_Label
isotextNewP4_Label := StrSplit(isotextNewP4_Label, ":")
txtPrevP4_Label := % isotextNewP4_Label[2]
FileReadLine, isotextNewP5_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP5_Label
isotextNewP5_Label := StrSplit(isotextNewP5_Label, ":")
txtPrevP5_Label := % isotextNewP5_Label[2]
FileReadLine, isotextNewP6_Label,%A_ScriptDir%\Resources\Functions.txt, PrevP6_Label
isotextNewP6_Label := StrSplit(isotextNewP6_Label, ":")
txtPrevP6_Label := % isotextNewP6_Label[2]
FileReadLine, isotextNewRnull_Label,%A_ScriptDir%\Resources\Functions.txt, PrevRnull_Label
isotextNewRnull_Label := StrSplit(isotextNewRnull_Label, ":")
txtPrevRnull_Label := % isotextNewRnull_Label[2]
FileReadLine, isotextNewR1_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR1_Label
isotextNewR1_Label := StrSplit(isotextNewR1_Label, ":")
txtPrevR1_Label := % isotextNewR1_Label[2]
FileReadLine, isotextNewR2_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR2_Label
isotextNewR2_Label := StrSplit(isotextNewR2_Label, ":")
txtPrevR2_Label := % isotextNewR2_Label[2]
FileReadLine, isotextNewR3_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR3_Label
isotextNewR3_Label := StrSplit(isotextNewR3_Label, ":")
txtPrevR3_Label := % isotextNewR3_Label[2]
FileReadLine, isotextNewR4_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR4_Label
isotextNewR4_Label := StrSplit(isotextNewR4_Label, ":")
txtPrevR4_Label := % isotextNewR4_Label[2]
FileReadLine, isotextNewR5_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR5_Label
isotextNewR5_Label := StrSplit(isotextNewR5_Label, ":")
txtPrevR5_Label := % isotextNewR5_Label[2]
FileReadLine, isotextNewR6_Label,%A_ScriptDir%\Resources\Functions.txt, PrevR6_Label
isotextNewR6_Label := StrSplit(isotextNewR6_Label, ":")
txtPrevR6_Label := % isotextNewR6_Label[2]

If PrevBnull_Label = 2
	{
	ShowBnull_OverrideLabel := 0
	SendKeyShowBnull_Label := 0
	Bnull_ShowExeFilePathButton := 1
	Bnull_ShowMBCtrl := 1
	Bnull_ShowMBShift := 1
	Bnull_ShowMBAlt := 1
	Bnull_ShowMBDrag := 1
	}
If PrevBnull_Label = 3 
	{
	ShowBnull_OverrideLabel := 0
	Bnull_ShowExeFilePathButton := 0
	SendKeyShowBnull_Label := 1
	Bnull_ShowMBCtrl := 1
	Bnull_ShowMBShift := 1
	Bnull_ShowMBAlt := 1
	Bnull_ShowMBDrag := 1
	}
If PrevBnull_Label between 4 and 6
	{
	ShowBnull_OverrideLabel := 0
	Bnull_ShowExeFilePathButton := 1
	SendKeyShowBnull_Label := 1
	Bnull_ShowMBCtrl := 0
	Bnull_ShowMBShift := 0
	Bnull_ShowMBAlt := 0
	Bnull_ShowMBDrag := 0
	}
If PrevB1_Label = 2
	{
	ShowB1_OverrideLabel := 0
	SendKeyShowB1_Label := 0
	B1_ShowExeFilePathButton := 1
	B1_ShowMBCtrl := 1
	B1_ShowMBShift := 1
	B1_ShowMBAlt := 1
	B1_ShowMBDrag := 1
	}
If PrevB1_Label = 3 
	{
	ShowB1_OverrideLabel := 0
	B1_ShowExeFilePathButton := 0
	SendKeyShowB1_Label := 1
	B1_ShowMBCtrl := 1
	B1_ShowMBShift := 1
	B1_ShowMBAlt := 1
	B1_ShowMBDrag := 1
	}
If PrevB1_Label between 4 and 6
	{
	ShowB1_OverrideLabel := 0
	B1_ShowExeFilePathButton := 1
	SendKeyShowB1_Label := 1
	B1_ShowMBCtrl := 0
	B1_ShowMBShift := 0
	B1_ShowMBAlt := 0
	B1_ShowMBDrag := 0
	}
If PrevB2_Label = 2
	{
	ShowB2_OverrideLabel := 0
	SendKeyShowB2_Label := 0
	B2_ShowExeFilePathButton := 1
	B2_ShowMBCtrl := 1
	B2_ShowMBShift := 1
	B2_ShowMBAlt := 1
	B2_ShowMBDrag := 1
	}
If PrevB2_Label = 3 
	{
	ShowB2_OverrideLabel := 0
	B2_ShowExeFilePathButton := 0
	SendKeyShowB2_Label := 1
	B2_ShowMBCtrl := 1
	B2_ShowMBShift := 1
	B2_ShowMBAlt := 1
	B2_ShowMBDrag := 1
	}
If PrevB2_Label between 4 and 6
	{
	ShowB2_OverrideLabel := 0
	B2_ShowExeFilePathButton := 1
	SendKeyShowB2_Label := 1
	B2_ShowMBCtrl := 0
	B2_ShowMBShift := 0
	B2_ShowMBAlt := 0
	B2_ShowMBDrag := 0
	}
If PrevB3_Label = 2
	{
	ShowB3_OverrideLabel := 0
	SendKeyShowB3_Label := 0
	B3_ShowExeFilePathButton := 1
	B3_ShowMBCtrl := 1
	B3_ShowMBShift := 1
	B3_ShowMBAlt := 1
	B3_ShowMBDrag := 1
	}
If PrevB3_Label = 3 
	{
	ShowB3_OverrideLabel := 0
	B3_ShowExeFilePathButton := 0
	SendKeyShowB3_Label := 1
	B3_ShowMBCtrl := 1
	B3_ShowMBShift := 1
	B3_ShowMBAlt := 1
	B3_ShowMBDrag := 1
	}
If PrevB3_Label between 4 and 6
	{
	ShowB3_OverrideLabel := 0
	B3_ShowExeFilePathButton := 1
	SendKeyShowB3_Label := 1
	B3_ShowMBCtrl := 0
	B3_ShowMBShift := 0
	B3_ShowMBAlt := 0
	B3_ShowMBDrag := 0
	}
If PrevB4_Label = 2
	{
	ShowB4_OverrideLabel := 0
	SendKeyShowB4_Label := 0
	B4_ShowExeFilePathButton := 1
	B4_ShowMBCtrl := 1
	B4_ShowMBShift := 1
	B4_ShowMBAlt := 1
	B4_ShowMBDrag := 1
	}
If PrevB4_Label = 3 
	{
	ShowB4_OverrideLabel := 0
	B4_ShowExeFilePathButton := 0
	SendKeyShowB4_Label := 1
	B4_ShowMBCtrl := 1
	B4_ShowMBShift := 1
	B4_ShowMBAlt := 1
	B4_ShowMBDrag := 1
	}
If PrevB4_Label between 4 and 6
	{
	ShowB4_OverrideLabel := 0
	B4_ShowExeFilePathButton := 1
	SendKeyShowB4_Label := 1
	B4_ShowMBCtrl := 0
	B4_ShowMBShift := 0
	B4_ShowMBAlt := 0
	B4_ShowMBDrag := 0
	}
If PrevB5_Label = 2
	{
	ShowB5_OverrideLabel := 0
	SendKeyShowB5_Label := 0
	B5_ShowExeFilePathButton := 1
	B5_ShowMBCtrl := 1
	B5_ShowMBShift := 1
	B5_ShowMBAlt := 1
	B5_ShowMBDrag := 1
	}
If PrevB5_Label = 3 
	{
	ShowB5_OverrideLabel := 0
	B5_ShowExeFilePathButton := 0
	SendKeyShowB5_Label := 1
	B5_ShowMBCtrl := 1
	B5_ShowMBShift := 1
	B5_ShowMBAlt := 1
	B5_ShowMBDrag := 1
	}
If PrevB5_Label between 4 and 6
	{
	ShowB5_OverrideLabel := 0
	B5_ShowExeFilePathButton := 1
	SendKeyShowB5_Label := 1
	B5_ShowMBCtrl := 0
	B5_ShowMBShift := 0
	B5_ShowMBAlt := 0
	B5_ShowMBDrag := 0
	}
If PrevB6_Label = 2
	{
	ShowB6_OverrideLabel := 0
	SendKeyShowB6_Label := 0
	B6_ShowExeFilePathButton := 1
	B6_ShowMBCtrl := 1
	B6_ShowMBShift := 1
	B6_ShowMBAlt := 1
	B6_ShowMBDrag := 1
	}
If PrevB6_Label = 3 
	{
	ShowB6_OverrideLabel := 0
	B6_ShowExeFilePathButton := 0
	SendKeyShowB6_Label := 1
	B6_ShowMBCtrl := 1
	B6_ShowMBShift := 1
	B6_ShowMBAlt := 1
	B6_ShowMBDrag := 1
	}
If PrevB6_Label between 4 and 6
	{
	ShowB6_OverrideLabel := 0
	B6_ShowExeFilePathButton := 1
	SendKeyShowB6_Label := 1
	B6_ShowMBCtrl := 0
	B6_ShowMBShift := 0
	B6_ShowMBAlt := 0
	B6_ShowMBDrag := 0
	}

If PrevPnull_Label = 2
	{
	ShowPnull_OverrideLabel := 0
	SendKeyShowPnull_Label := 0
	Pnull_ShowExeFilePathButton := 1
	Pnull_ShowMBCtrl := 1
	Pnull_ShowMBShift := 1
	Pnull_ShowMBAlt := 1
	Pnull_ShowMBDrag := 1
	}
If PrevPnull_Label = 3 
	{
	ShowPnull_OverrideLabel := 0
	Pnull_ShowExeFilePathButton := 0
	SendKeyShowPnull_Label := 1
	Pnull_ShowMBCtrl := 1
	Pnull_ShowMBShift := 1
	Pnull_ShowMBAlt := 1
	Pnull_ShowMBDrag := 1
	}
If PrevPnull_Label between 4 and 6
	{
	ShowPnull_OverrideLabel := 0
	Pnull_ShowExeFilePathButton := 1
	SendKeyShowPnull_Label := 1
	Pnull_ShowMBCtrl := 0
	Pnull_ShowMBShift := 0
	Pnull_ShowMBAlt := 0
	Pnull_ShowMBDrag := 0
	}
If PrevP1_Label = 2
	{
	ShowP1_OverrideLabel := 0
	SendKeyShowP1_Label := 0
	P1_ShowExeFilePathButton := 1
	P1_ShowMBCtrl := 1
	P1_ShowMBShift := 1
	P1_ShowMBAlt := 1
	P1_ShowMBDrag := 1
	}
If PrevP1_Label = 3 
	{
	ShowP1_OverrideLabel := 0
	P1_ShowExeFilePathButton := 0
	SendKeyShowP1_Label := 1
	P1_ShowMBCtrl := 1
	P1_ShowMBShift := 1
	P1_ShowMBAlt := 1
	P1_ShowMBDrag := 1
	}
If PrevP1_Label between 4 and 6
	{
	ShowP1_OverrideLabel := 0
	P1_ShowExeFilePathButton := 1
	SendKeyShowP1_Label := 1
	P1_ShowMBCtrl := 0
	P1_ShowMBShift := 0
	P1_ShowMBAlt := 0
	P1_ShowMBDrag := 0
	}
If PrevP2_Label = 2
	{
	ShowP2_OverrideLabel := 0
	SendKeyShowP2_Label := 0
	P2_ShowExeFilePathButton := 1
	P2_ShowMBCtrl := 1
	P2_ShowMBShift := 1
	P2_ShowMBAlt := 1
	P2_ShowMBDrag := 1
	}
If PrevP2_Label = 3 
	{
	ShowP2_OverrideLabel := 0
	P2_ShowExeFilePathButton := 0
	SendKeyShowP2_Label := 1
	P2_ShowMBCtrl := 1
	P2_ShowMBShift := 1
	P2_ShowMBAlt := 1
	P2_ShowMBDrag := 1
	}
If PrevP2_Label between 4 and 6
	{
	ShowP2_OverrideLabel := 0
	P2_ShowExeFilePathButton := 1
	SendKeyShowP2_Label := 1
	P2_ShowMBCtrl := 0
	P2_ShowMBShift := 0
	P2_ShowMBAlt := 0
	P2_ShowMBDrag := 0
	}
If PrevP3_Label = 2
	{
	ShowP3_OverrideLabel := 0
	SendKeyShowP3_Label := 0
	P3_ShowExeFilePathButton := 1
	P3_ShowMBCtrl := 1
	P3_ShowMBShift := 1
	P3_ShowMBAlt := 1
	P3_ShowMBDrag := 1
	}
If PrevP3_Label = 3 
	{
	ShowP3_OverrideLabel := 0
	P3_ShowExeFilePathButton := 0
	SendKeyShowP3_Label := 1
	P3_ShowMBCtrl := 1
	P3_ShowMBShift := 1
	P3_ShowMBAlt := 1
	P3_ShowMBDrag := 1
	}
If PrevP3_Label between 4 and 6
	{
	ShowP3_OverrideLabel := 0
	P3_ShowExeFilePathButton := 1
	SendKeyShowP3_Label := 1
	P3_ShowMBCtrl := 0
	P3_ShowMBShift := 0
	P3_ShowMBAlt := 0
	P3_ShowMBDrag := 0
	}
If PrevP4_Label = 2
	{
	ShowP4_OverrideLabel := 0
	SendKeyShowP4_Label := 0
	P4_ShowExeFilePathButton := 1
	P4_ShowMBCtrl := 1
	P4_ShowMBShift := 1
	P4_ShowMBAlt := 1
	P4_ShowMBDrag := 1
	}
If PrevP4_Label = 3 
	{
	ShowP4_OverrideLabel := 0
	P4_ShowExeFilePathButton := 0
	SendKeyShowP4_Label := 1
	P4_ShowMBCtrl := 1
	P4_ShowMBShift := 1
	P4_ShowMBAlt := 1
	P4_ShowMBDrag := 1
	}
If PrevP4_Label between 4 and 6
	{
	ShowP4_OverrideLabel := 0
	P4_ShowExeFilePathButton := 1
	SendKeyShowP4_Label := 1
	P4_ShowMBCtrl := 0
	P4_ShowMBShift := 0
	P4_ShowMBAlt := 0
	P4_ShowMBDrag := 0
	}
If PrevP5_Label = 2
	{
	ShowP5_OverrideLabel := 0
	SendKeyShowP5_Label := 0
	P5_ShowExeFilePathButton := 1
	P5_ShowMBCtrl := 1
	P5_ShowMBShift := 1
	P5_ShowMBAlt := 1
	P5_ShowMBDrag := 1
	}
If PrevP5_Label = 3 
	{
	ShowP5_OverrideLabel := 0
	P5_ShowExeFilePathButton := 0
	SendKeyShowP5_Label := 1
	P5_ShowMBCtrl := 1
	P5_ShowMBShift := 1
	P5_ShowMBAlt := 1
	P5_ShowMBDrag := 1
	}
If PrevP5_Label between 4 and 6
	{
	ShowP5_OverrideLabel := 0
	P5_ShowExeFilePathButton := 1
	SendKeyShowP5_Label := 1
	P5_ShowMBCtrl := 0
	P5_ShowMBShift := 0
	P5_ShowMBAlt := 0
	P5_ShowMBDrag := 0
	}
If PrevP6_Label = 2
	{
	ShowP6_OverrideLabel := 0
	SendKeyShowP6_Label := 0
	P6_ShowExeFilePathButton := 1
	P6_ShowMBCtrl := 1
	P6_ShowMBShift := 1
	P6_ShowMBAlt := 1
	P6_ShowMBDrag := 1
	}
If PrevP6_Label = 3 
	{
	ShowP6_OverrideLabel := 0
	P6_ShowExeFilePathButton := 0
	SendKeyShowP6_Label := 1
	P6_ShowMBCtrl := 1
	P6_ShowMBShift := 1
	P6_ShowMBAlt := 1
	P6_ShowMBDrag := 1
	}
If PrevP6_Label between 4 and 6
	{
	ShowP6_OverrideLabel := 0
	P6_ShowExeFilePathButton := 1
	SendKeyShowP6_Label := 1
	P6_ShowMBCtrl := 0
	P6_ShowMBShift := 0
	P6_ShowMBAlt := 0
	P6_ShowMBDrag := 0
	}

If PrevRnull_Label = 2
	{
	ShowRnull_OverrideLabel := 0
	SendKeyShowRnull_Label := 0
	Rnull_ShowExeFilePathButton := 1
	Rnull_ShowMBCtrl := 1
	Rnull_ShowMBShift := 1
	Rnull_ShowMBAlt := 1
	Rnull_ShowMBDrag := 1
	}
If PrevRnull_Label = 3 
	{
	ShowRnull_OverrideLabel := 0
	Rnull_ShowExeFilePathButton := 0
	SendKeyShowRnull_Label := 1
	Rnull_ShowMBCtrl := 1
	Rnull_ShowMBShift := 1
	Rnull_ShowMBAlt := 1
	Rnull_ShowMBDrag := 1
	}
If PrevRnull_Label between 4 and 6
	{
	ShowRnull_OverrideLabel := 0
	Rnull_ShowExeFilePathButton := 1
	SendKeyShowRnull_Label := 1
	Rnull_ShowMBCtrl := 0
	Rnull_ShowMBShift := 0
	Rnull_ShowMBAlt := 0
	Rnull_ShowMBDrag := 0
	}
If PrevR1_Label = 2
	{
	ShowR1_OverrideLabel := 0
	SendKeyShowR1_Label := 0
	R1_ShowExeFilePathButton := 1
	R1_ShowMBCtrl := 1
	R1_ShowMBShift := 1
	R1_ShowMBAlt := 1
	R1_ShowMBDrag := 1
	}
If PrevR1_Label = 3 
	{
	ShowR1_OverrideLabel := 0
	R1_ShowExeFilePathButton := 0
	SendKeyShowR1_Label := 1
	R1_ShowMBCtrl := 1
	R1_ShowMBShift := 1
	R1_ShowMBAlt := 1
	R1_ShowMBDrag := 1
	}
If PrevR1_Label between 4 and 6
	{
	ShowR1_OverrideLabel := 0
	R1_ShowExeFilePathButton := 1
	SendKeyShowR1_Label := 1
	R1_ShowMBCtrl := 0
	R1_ShowMBShift := 0
	R1_ShowMBAlt := 0
	R1_ShowMBDrag := 0
	}
If PrevR2_Label = 2
	{
	ShowR2_OverrideLabel := 0
	SendKeyShowR2_Label := 0
	R2_ShowExeFilePathButton := 1
	R2_ShowMBCtrl := 1
	R2_ShowMBShift := 1
	R2_ShowMBAlt := 1
	R2_ShowMBDrag := 1
	}
If PrevR2_Label = 3 
	{
	ShowR2_OverrideLabel := 0
	R2_ShowExeFilePathButton := 0
	SendKeyShowR2_Label := 1
	R2_ShowMBCtrl := 1
	R2_ShowMBShift := 1
	R2_ShowMBAlt := 1
	R2_ShowMBDrag := 1
	}
If PrevR2_Label between 4 and 6
	{
	ShowR2_OverrideLabel := 0
	R2_ShowExeFilePathButton := 1
	SendKeyShowR2_Label := 1
	R2_ShowMBCtrl := 0
	R2_ShowMBShift := 0
	R2_ShowMBAlt := 0
	R2_ShowMBDrag := 0
	}
If PrevR3_Label = 2
	{
	ShowR3_OverrideLabel := 0
	SendKeyShowR3_Label := 0
	R3_ShowExeFilePathButton := 1
	R3_ShowMBCtrl := 1
	R3_ShowMBShift := 1
	R3_ShowMBAlt := 1
	R3_ShowMBDrag := 1
	}
If PrevR3_Label = 3 
	{
	ShowR3_OverrideLabel := 0
	R3_ShowExeFilePathButton := 0
	SendKeyShowR3_Label := 1
	R3_ShowMBCtrl := 1
	R3_ShowMBShift := 1
	R3_ShowMBAlt := 1
	R3_ShowMBDrag := 1
	}
If PrevR3_Label between 4 and 6
	{
	ShowR3_OverrideLabel := 0
	R3_ShowExeFilePathButton := 1
	SendKeyShowR3_Label := 1
	R3_ShowMBCtrl := 0
	R3_ShowMBShift := 0
	R3_ShowMBAlt := 0
	R3_ShowMBDrag := 0
	}
If PrevR4_Label = 2
	{
	ShowR4_OverrideLabel := 0
	SendKeyShowR4_Label := 0
	R4_ShowExeFilePathButton := 1
	R4_ShowMBCtrl := 1
	R4_ShowMBShift := 1
	R4_ShowMBAlt := 1
	R4_ShowMBDrag := 1
	}
If PrevR4_Label = 3 
	{
	ShowR4_OverrideLabel := 0
	R4_ShowExeFilePathButton := 0
	SendKeyShowR4_Label := 1
	R4_ShowMBCtrl := 1
	R4_ShowMBShift := 1
	R4_ShowMBAlt := 1
	R4_ShowMBDrag := 1
	}
If PrevR4_Label between 4 and 6
	{
	ShowR4_OverrideLabel := 0
	R4_ShowExeFilePathButton := 1
	SendKeyShowR4_Label := 1
	R4_ShowMBCtrl := 0
	R4_ShowMBShift := 0
	R4_ShowMBAlt := 0
	R4_ShowMBDrag := 0
	}
If PrevR5_Label = 2
	{
	ShowR5_OverrideLabel := 0
	SendKeyShowR5_Label := 0
	R5_ShowExeFilePathButton := 1
	R5_ShowMBCtrl := 1
	R5_ShowMBShift := 1
	R5_ShowMBAlt := 1
	R5_ShowMBDrag := 1
	}
If PrevR5_Label = 3 
	{
	ShowR5_OverrideLabel := 0
	R5_ShowExeFilePathButton := 0
	SendKeyShowR5_Label := 1
	R5_ShowMBCtrl := 1
	R5_ShowMBShift := 1
	R5_ShowMBAlt := 1
	R5_ShowMBDrag := 1
	}
If PrevR5_Label between 4 and 6
	{
	ShowR5_OverrideLabel := 0
	R5_ShowExeFilePathButton := 1
	SendKeyShowR5_Label := 1
	R5_ShowMBCtrl := 0
	R5_ShowMBShift := 0
	R5_ShowMBAlt := 0
	R5_ShowMBDrag := 0
	}
If PrevR6_Label = 2
	{
	ShowR6_OverrideLabel := 0
	SendKeyShowR6_Label := 0
	R6_ShowExeFilePathButton := 1
	R6_ShowMBCtrl := 1
	R6_ShowMBShift := 1
	R6_ShowMBAlt := 1
	R6_ShowMBDrag := 1
	}
If PrevR6_Label = 3 
	{
	ShowR6_OverrideLabel := 0
	R6_ShowExeFilePathButton := 0
	SendKeyShowR6_Label := 1
	R6_ShowMBCtrl := 1
	R6_ShowMBShift := 1
	R6_ShowMBAlt := 1
	R6_ShowMBDrag := 1
	}
If PrevR6_Label between 4 and 6
	{
	ShowR6_OverrideLabel := 0
	R6_ShowExeFilePathButton := 1
	SendKeyShowR6_Label := 1
	R6_ShowMBCtrl := 0
	R6_ShowMBShift := 0
	R6_ShowMBAlt := 0
	R6_ShowMBDrag := 0
	}	
	
AppTitleTemp := StrSplit(A_ScriptDir, "\")
AppNum := AppTitleTemp.MaxIndex()
AppTitle := AppTitleTemp[AppNum]	


Gui, PieMenu:Add, Button, x365 y865 w120 h25 gOK, OK
Gui, PieMenu:Add, Button, x235 y865 w120 h25 gCancel, Cancel
Gui, PieMenu:Add, Tab, x0 y0 w505 h860, General|Blue Pie|Purple Pie|Red Pie
Gui, PieMenu:Tab, 1, 1
Gui, PieMenu:Add, GroupBox, x15 y40 w470 h100, Select Pie Menu Activation Key
Gui, PieMenu:Add, ComboBox, x25 y60 w175 h250 Choose%PrevPieActivateKeyNumber% vNewPieActivateKeySetting, %AcceptablePieKeys%
; Gui, PieMenu:Add, Button, x210 y60 w105 h20, KeyList
Gui, PieMenu:Add, Text, x25 y90 w450 h30, Pause (The 'Pause/Break' key), XButton1 (Mouse Back Button) XButton2 (Mouse Forward Button) or NumpadMult are good choices.
Gui, PieMenu:Add, Text, x25 y120 w315 h15, The application will be blocked from recieving the selected key.
Gui, PieMenu:Add, GroupBox, x15 y145 w470 h75, Time for Pie Menu Labels to Appear
Gui, PieMenu:Add, Slider, x20 y165 w460 h25 Choose50 range0-69 vNewPieLabelDelaySetting, %PrevPieLabelDelaySetting% 
Gui, PieMenu:Add, Text, x25 y195 w35 h15, 0 secs
Gui, PieMenu:Add, Text, x165 y195 w35 h15, 1 sec
Gui, PieMenu:Add, Text, x305 y195 w35 h15, 2 secs
Gui, PieMenu:Add, Text, x445 y195 w35 h15, 3 secs
Gui, PieMenu:Add, GroupBox, x15 y315 w470 h105, Choose Method for Shifting Pie Menus
Gui, PieMenu:Add, Radio, x25 y335 w450 h15 Checked%1PrevShiftPieMethod% v1NewShiftPieMethod gPieMethod, Move away from center and return ( fastest)
Gui, PieMenu:Add, Radio, x25 y355 w450 h15 Checked%2PrevShiftPieMethod% v2NewShiftPieMethod gPieMethod, Leave center and return for Purple, circle around and return to center for Red 
Gui, PieMenu:Add, Radio, x25 y375 w450 h15 Checked%3PrevShiftPieMethod% v3NewShiftPieMethod gPieMethod, Circle around pie and return to center (Most Controlled)
Gui, PieMenu:Add, Radio, x25 y395 w450 h15 Checked%4PrevShiftPieMethod% v4NewShiftPieMethod gPieMethod, Press Shift (Purple), Ctrl (Red), Alt (Blue) only (Fast and Controlled, but boring)
Gui, PieMenu:Add, GroupBox, x15 y225 w470 h85, Menus to Use
Gui, PieMenu:Add, Radio, x25 y245 w390 h15 Checked%3PrevPieNumberSetting% v3NewPieNumberSetting gPieNumber, Blue, Purple and Red   :D
Gui, PieMenu:Add, Radio, x25 y265 w390 h15 Checked%2PrevPieNumberSetting% v2NewPieNumberSetting gPieNumber, Blue and Purple
Gui, PieMenu:Add, Radio, x25 y285 w390 h15 Checked%1PrevPieNumberSetting% v1NewPieNumberSetting gPieNumber, Blue Only  :/

Gui, PieMenu:Add, GroupBox, x15 y425 w470 h47, Pie Menu Size
Gui, PieMenu:Add, DropDownList, x25 y440 w80 +AltSubmit Choose%PrevPieMenuSize% vNewPieMenuSize,Small|Medium|Large|BigBoi

Gui, PieMenu:Add, GroupBox, x15 y475 w470 h70, Miscellaneous
Gui, PieMenu:Add, Checkbox, x25 y495 w130 h15 Checked%PrevDisplayTooltipsSetting% vNewDisplayTooltipsSetting, Display Tooltips
Gui, PieMenu:Add, Checkbox, x25 y520 w130 h15 Checked%PrevPenTabletActive% vNewPenTabletActive, Enable Pen Tablet

Gui, PieMenu:Add, Button, x235 y550 w120 h25 gCancel, Cancel
Gui, PieMenu:Add, Button, x365 y550 w120 h25 gOK, OK

Gui, PieMenu:Add, GroupBox, x15 y600 w470 h230, Neat Notes
Gui, PieMenu:Add, Text, x25 y620 w450 h200, Ctrl + Shift + Alt + 'Pie Key' Closes all AHK scripts (the scripts that run this program).`n`nCtrl + Alt + 'Pie Key' opens this settings window for the running Pie Menu profile.`n`nPressing Alt, Shift, or Control will switch between Blue, Purple and Red pies regardless of the 'Method' setting.`n`n`n`n`n`n`n`n`nYou're a real neat person.  also thx for not using a <720p monitor

Gui, PieMenu:Tab, 2, 1
Gui, PieMenu:Add, Picture, x223 y48 w48 h48, %A_ScriptDir%\Resources\1PieMenu\PieMenuNull.png
Gui, PieMenu:Add, Text, x243 y66 w10 h15, M
Gui, PieMenu:Add, Text, x275 y50 w10 h15, 1
Gui, PieMenu:Add, Text, x245 y30 w10 h15, 2
Gui, PieMenu:Add, Text, x210 y50 w10 h15, 3
Gui, PieMenu:Add, Text, x210 y85 w10 h15, 4
Gui, PieMenu:Add, Text, x245 y100 w10 h15, 5
Gui, PieMenu:Add, Text, x275 y85 w10 h15, 6

Gui, PieMenu:Add, GroupBox, x5 y115 w490 h105, Position M
Gui, PieMenu:Add, Text, x85 y128 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y145 w155 h120 +AltSubmit Choose%PrevBnull_Label% gRefNewBnull_Label vNewBnull_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y170 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y185 w475 h28 vtxtNewBnull_Label, %txtPrevBnull_Label%
Gui, PieMenu:Add, Text, x265 y135 w75 h15 +Hidden%ShowBnull_OverrideLabel% vNewBnull_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y130 w145 h20 +Hidden%ShowBnull_OverrideLabel% vNewBnull_OverrideLabel, %PrevBnull_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y160 w80 h15 +Hidden%SendKeyShowBnull_Label% vNewBnull_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y155 w145 h20 +Hidden%SendKeyShowBnull_Label% vNewBnull_SendKeystroke, %PrevBnull_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y153 w80 h25 +Hidden%Bnull_ShowExeFilePathButton% gBnull_SelectFile vNewBnull_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y155 w145 h20 +Hidden%Bnull_ShowExeFilePathButton% vNewBnull_ExeFilePath, %Bnull_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y158 w40 h15 +Hidden%Bnull_ShowMBCtrl% Checked%Bnull_MBCtrl% gRefNewBnull_Label vNewBnull_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y158 w40 h15 +Hidden%Bnull_ShowMBShift% Checked%Bnull_MBShift% gRefNewBnull_Label vNewBnull_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y158 w40 h15 +Hidden%Bnull_ShowMBAlt% Checked%Bnull_MBAlt% gRefNewBnull_Label vNewBnull_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y158 w40 h15 +Hidden%Bnull_ShowMBDrag% Checked%Bnull_MBDrag% gRefNewBnull_Label vNewBnull_MBDrag, Drag


Gui, PieMenu:Add, GroupBox, x5 y220 w490 h105, Position 1
Gui, PieMenu:Add, Text, x85 y233 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y250 w155 h120 +AltSubmit Choose%PrevB1_Label% gRefNewB1_Label vNewB1_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y275 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y290 w475 h28 vtxtNewB1_Label, %txtPrevB1_Label%
Gui, PieMenu:Add, Text, x265 y240 w75 h15 +Hidden%ShowB1_OverrideLabel% vNewB1_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y235 w145 h20 +Hidden%ShowB1_OverrideLabel% vNewB1_OverrideLabel, %PrevB1_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y265 w80 h15 +Hidden%SendKeyShowB1_Label% vNewB1_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y260 w145 h20 +Hidden%SendKeyShowB1_Label%  vNewB1_SendKeystroke, %PrevB1_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y258 w80 h25 +Hidden%B1_ShowExeFilePathButton% gB1_SelectFile vNewB1_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y260 w145 h20 +Hidden%B1_ShowExeFilePathButton% vNewB1_ExeFilePath, %B1_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y263 w40 h15 +Hidden%B1_ShowMBCtrl% Checked%B1_MBCtrl% gRefNewB1_Label vNewB1_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y263 w40 h15 +Hidden%B1_ShowMBShift% Checked%B1_MBShift% gRefNewB1_Label vNewB1_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y263 w40 h15 +Hidden%B1_ShowMBAlt% Checked%B1_MBAlt% gRefNewB1_Label vNewB1_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y263 w40 h15 +Hidden%B1_ShowMBDrag% Checked%B1_MBDrag% gRefNewB1_Label vNewB1_MBDrag, Drag


Gui, PieMenu:Add, GroupBox, x5 y325 w490 h105, Position 2
Gui, PieMenu:Add, Text, x85 y338 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y355 w155 h120 +AltSubmit Choose%PrevB2_Label% gRefNewB2_Label vNewB2_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y380 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y395 w475 h28 vtxtNewB2_Label, %txtPrevB2_Label%
Gui, PieMenu:Add, Text, x265 y345 w75 h15 +Hidden%ShowB2_OverrideLabel% vNewB2_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y340 w145 h20 +Hidden%ShowB2_OverrideLabel% vNewB2_OverrideLabel, %PrevB2_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y370 w80 h15 +Hidden%SendKeyShowB2_Label% vNewB2_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y365 w145 h20 +Hidden%SendKeyShowB2_Label%  vNewB2_SendKeystroke, %PrevB2_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y363 w80 h25 +Hidden%B2_ShowExeFilePathButton% gB2_SelectFile vNewB2_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y365 w145 h20 +Hidden%B2_ShowExeFilePathButton% vNewB2_ExeFilePath, %B2_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y368 w40 h15 +Hidden%B2_ShowMBCtrl% Checked%B2_MBCtrl% gRefNewB2_Label vNewB2_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y368 w40 h15 +Hidden%B2_ShowMBShift% Checked%B2_MBShift% gRefNewB2_Label vNewB2_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y368 w40 h15 +Hidden%B2_ShowMBAlt% Checked%B2_MBAlt% gRefNewB2_Label vNewB2_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y368 w40 h15 +Hidden%B2_ShowMBDrag% Checked%B2_MBDrag% gRefNewB2_Label vNewB2_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y430 w490 h105, Position 3
Gui, PieMenu:Add, Text, x85 y443 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y460 w155 h120 +AltSubmit Choose%PrevB3_Label% gRefNewB3_Label vNewB3_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y485 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y500 w475 h28 vtxtNewB3_Label, %txtPrevB3_Label%
Gui, PieMenu:Add, Text, x265 y450 w75 h15 +Hidden%ShowB3_OverrideLabel% vNewB3_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y445 w145 h20 +Hidden%ShowB3_OverrideLabel% vNewB3_OverrideLabel, %PrevB3_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y475 w80 h15 +Hidden%SendKeyShowB3_Label% vNewB3_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y470 w145 h20 +Hidden%SendKeyShowB3_Label%  vNewB3_SendKeystroke, %PrevB3_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y468 w80 h25 +Hidden%B3_ShowExeFilePathButton% gB3_SelectFile vNewB3_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y470 w145 h20 +Hidden%B3_ShowExeFilePathButton% vNewB3_ExeFilePath, %B3_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y473 w40 h15 +Hidden%B3_ShowMBCtrl% Checked%B3_MBCtrl% gRefNewB3_Label vNewB3_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y473 w40 h15 +Hidden%B3_ShowMBShift% Checked%B3_MBShift% gRefNewB3_Label vNewB3_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y473 w40 h15 +Hidden%B3_ShowMBAlt% Checked%B3_MBAlt% gRefNewB3_Label vNewB3_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y473 w40 h15 +Hidden%B3_ShowMBDrag% Checked%B3_MBDrag% gRefNewB3_Label vNewB3_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y535 w490 h105, Position 4
Gui, PieMenu:Add, Text, x85 y548 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y565 w155 h120 +AltSubmit Choose%PrevB4_Label% gRefNewB4_Label vNewB4_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y590 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y605 w475 h28 vtxtNewB4_Label, %txtPrevB4_Label%
Gui, PieMenu:Add, Text, x265 y555 w75 h15 +Hidden%ShowB4_OverrideLabel% vNewB4_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y550 w145 h20 +Hidden%ShowB4_OverrideLabel% vNewB4_OverrideLabel, %PrevB4_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y580 w80 h15 +Hidden%SendKeyShowB4_Label% vNewB4_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y575 w145 h20 +Hidden%SendKeyShowB4_Label%  vNewB4_SendKeystroke, %PrevB4_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y573 w80 h25 +Hidden%B4_ShowExeFilePathButton% gB4_SelectFile vNewB4_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y575 w145 h20 +Hidden%B4_ShowExeFilePathButton% vNewB4_ExeFilePath, %B4_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y578 w40 h15 +Hidden%B4_ShowMBCtrl% Checked%B4_MBCtrl% gRefNewB4_Label vNewB4_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y578 w40 h15 +Hidden%B4_ShowMBShift% Checked%B4_MBShift% gRefNewB4_Label vNewB4_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y578 w40 h15 +Hidden%B4_ShowMBAlt% Checked%B4_MBAlt% gRefNewB4_Label vNewB4_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y578 w40 h15 +Hidden%B4_ShowMBDrag% Checked%B4_MBDrag% gRefNewB4_Label vNewB4_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y640 w490 h105, Position 5
Gui, PieMenu:Add, Text, x85 y653 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y670 w155 h120 +AltSubmit Choose%PrevB5_Label% gRefNewB5_Label vNewB5_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y695 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y710 w475 h28 vtxtNewB5_Label, %txtPrevB5_Label%
Gui, PieMenu:Add, Text, x265 y660 w75 h15 +Hidden%ShowB5_OverrideLabel% vNewB5_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y655 w145 h20 +Hidden%ShowB5_OverrideLabel% vNewB5_OverrideLabel, %PrevB5_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y685 w80 h15 +Hidden%SendKeyShowB5_Label% vNewB5_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y680 w145 h20 +Hidden%SendKeyShowB5_Label%  vNewB5_SendKeystroke, %PrevB5_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y678 w80 h25 +Hidden%B5_ShowExeFilePathButton% gB5_SelectFile vNewB5_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y680 w145 h20 +Hidden%B5_ShowExeFilePathButton% vNewB5_ExeFilePath, %B5_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y683 w40 h15 +Hidden%B5_ShowMBCtrl% Checked%B5_MBCtrl% gRefNewB5_Label vNewB5_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y683 w40 h15 +Hidden%B5_ShowMBShift% Checked%B5_MBShift% gRefNewB5_Label vNewB5_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y683 w40 h15 +Hidden%B5_ShowMBAlt% Checked%B5_MBAlt% gRefNewB5_Label vNewB5_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y683 w40 h15 +Hidden%B5_ShowMBDrag% Checked%B5_MBDrag% gRefNewB5_Label vNewB5_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y745 w490 h105, Position 6
Gui, PieMenu:Add, Text, x85 y758 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y775 w155 h120 +AltSubmit Choose%PrevB6_Label% gRefNewB6_Label vNewB6_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y800 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y815 w475 h28 vtxtNewB6_Label, %txtPrevB6_Label%
Gui, PieMenu:Add, Text, x265 y765 w75 h15 +Hidden%ShowB6_OverrideLabel% vNewB6_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y760 w145 h20 +Hidden%ShowB6_OverrideLabel% vNewB6_OverrideLabel, %PrevB6_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y790 w80 h15 +Hidden%SendKeyShowB6_Label% vNewB6_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y785 w145 h20  +Hidden%SendKeyShowB6_Label%  vNewB6_SendKeystroke, %PrevB6_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y783 w80 h25 +Hidden%B6_ShowExeFilePathButton% gB6_SelectFile vNewB6_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y785 w145 h20 +Hidden%B6_ShowExeFilePathButton% vNewB6_ExeFilePath, %B6_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y788 w40 h15 +Hidden%B6_ShowMBCtrl% Checked%B6_MBCtrl% gRefNewB6_Label vNewB6_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y788 w40 h15 +Hidden%B6_ShowMBShift% Checked%B6_MBShift% gRefNewB6_Label vNewB6_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y788 w40 h15 +Hidden%B6_ShowMBAlt% Checked%B6_MBAlt% gRefNewB6_Label vNewB6_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y788 w40 h15 +Hidden%B6_ShowMBDrag% Checked%B6_MBDrag% gRefNewB6_Label vNewB6_MBDrag, Drag

Gui, PieMenu:Tab, 3, 1
Gui, PieMenu:Add, Picture, x223 y48 w48 h48, %A_ScriptDir%\Resources\1PieMenu\PPieMenuNull.png
Gui, PieMenu:Add, Text, x243 y66 w10 h15, M
Gui, PieMenu:Add, Text, x275 y50 w10 h15, 1
Gui, PieMenu:Add, Text, x245 y30 w10 h15, 2
Gui, PieMenu:Add, Text, x210 y50 w10 h15, 3
Gui, PieMenu:Add, Text, x210 y85 w10 h15, 4
Gui, PieMenu:Add, Text, x245 y100 w10 h15, 5
Gui, PieMenu:Add, Text, x275 y85 w10 h15, 6

Gui, PieMenu:Add, GroupBox, x5 y115 w490 h105, Position M
Gui, PieMenu:Add, Text, x85 y128 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y145 w155 h120 +AltSubmit Choose%PrevPnull_Label% gRefNewPnull_Label vNewPnull_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y170 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y185 w475 h28 vtxtNewPnull_Label, %txtPrevPnull_Label%
Gui, PieMenu:Add, Text, x265 y135 w75 h15 +Hidden%ShowPnull_OverrideLabel% vNewPnull_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y130 w145 h20 +Hidden%ShowPnull_OverrideLabel% vNewPnull_OverrideLabel, %PrevPnull_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y160 w80 h15 +Hidden%SendKeyShowPnull_Label% vNewPnull_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y155 w145 h20 +Hidden%SendKeyShowPnull_Label% vNewPnull_SendKeystroke, %PrevPnull_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y153 w80 h25 +Hidden%Pnull_ShowExeFilePathButton% gPnull_SelectFile vNewPnull_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y155 w145 h20 +Hidden%Pnull_ShowExeFilePathButton% vNewPnull_ExeFilePath, %Pnull_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y158 w40 h15 +Hidden%Pnull_ShowMBCtrl% Checked%Pnull_MBCtrl% gRefNewPnull_Label vNewPnull_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y158 w40 h15 +Hidden%Pnull_ShowMBShift% Checked%Pnull_MBShift% gRefNewPnull_Label vNewPnull_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y158 w40 h15 +Hidden%Pnull_ShowMBAlt% Checked%Pnull_MBAlt% gRefNewPnull_Label vNewPnull_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y158 w40 h15 +Hidden%Pnull_ShowMBDrag% Checked%Pnull_MBDrag% gRefNewPnull_Label vNewPnull_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y220 w490 h105, Position 1
Gui, PieMenu:Add, Text, x85 y233 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y250 w155 h120 +AltSubmit Choose%PrevP1_Label% gRefNewP1_Label vNewP1_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y275 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y290 w475 h28 vtxtNewP1_Label, %txtPrevP1_Label%
Gui, PieMenu:Add, Text, x265 y240 w75 h15 +Hidden%ShowP1_OverrideLabel% vNewP1_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y235 w145 h20 +Hidden%ShowP1_OverrideLabel% vNewP1_OverrideLabel, %PrevP1_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y265 w80 h15 +Hidden%SendKeyShowP1_Label% vNewP1_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y260 w145 h20 +Hidden%SendKeyShowP1_Label%  vNewP1_SendKeystroke, %PrevP1_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y258 w80 h25 +Hidden%P1_ShowExeFilePathButton% gP1_SelectFile vNewP1_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y260 w145 h20 +Hidden%P1_ShowExeFilePathButton% vNewP1_ExeFilePath, %P1_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y263 w40 h15 +Hidden%P1_ShowMBCtrl% Checked%P1_MBCtrl% gRefNewP1_Label vNewP1_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y263 w40 h15 +Hidden%P1_ShowMBShift% Checked%P1_MBShift% gRefNewP1_Label vNewP1_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y263 w40 h15 +Hidden%P1_ShowMBAlt% Checked%P1_MBAlt% gRefNewP1_Label vNewP1_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y263 w40 h15 +Hidden%P1_ShowMBDrag% Checked%P1_MBDrag% gRefNewP1_Label vNewP1_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y325 w490 h105, Position 2
Gui, PieMenu:Add, Text, x85 y338 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y355 w155 h120 +AltSubmit Choose%PrevP2_Label% gRefNewP2_Label vNewP2_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y380 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y395 w475 h28 vtxtNewP2_Label, %txtPrevP2_Label%
Gui, PieMenu:Add, Text, x265 y345 w75 h15 +Hidden%ShowP2_OverrideLabel% vNewP2_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y340 w145 h20 +Hidden%ShowP2_OverrideLabel% vNewP2_OverrideLabel, %PrevP2_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y370 w80 h15 +Hidden%SendKeyShowP2_Label% vNewP2_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y365 w145 h20 +Hidden%SendKeyShowP2_Label%  vNewP2_SendKeystroke, %PrevP2_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y363 w80 h25 +Hidden%P2_ShowExeFilePathButton% gP2_SelectFile vNewP2_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y365 w145 h20 +Hidden%P2_ShowExeFilePathButton% vNewP2_ExeFilePath, %P2_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y368 w40 h15 +Hidden%P2_ShowMBCtrl% Checked%P2_MBCtrl% gRefNewP2_Label vNewP2_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y368 w40 h15 +Hidden%P2_ShowMBShift% Checked%P2_MBShift% gRefNewP2_Label vNewP2_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y368 w40 h15 +Hidden%P2_ShowMBAlt% Checked%P2_MBAlt% gRefNewP2_Label vNewP2_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y368 w40 h15 +Hidden%P2_ShowMBDrag% Checked%P2_MBDrag% gRefNewP2_Label vNewP2_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y430 w490 h105, Position 3
Gui, PieMenu:Add, Text, x85 y443 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y460 w155 h120 +AltSubmit Choose%PrevP3_Label% gRefNewP3_Label vNewP3_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y485 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y500 w475 h28 vtxtNewP3_Label, %txtPrevP3_Label%
Gui, PieMenu:Add, Text, x265 y450 w75 h15 +Hidden%ShowP3_OverrideLabel% vNewP3_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y445 w145 h20 +Hidden%ShowP3_OverrideLabel% vNewP3_OverrideLabel, %PrevP3_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y475 w80 h15 +Hidden%SendKeyShowP3_Label% vNewP3_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y470 w145 h20 +Hidden%SendKeyShowP3_Label%  vNewP3_SendKeystroke, %PrevP3_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y468 w80 h25 +Hidden%P3_ShowExeFilePathButton% gP3_SelectFile vNewP3_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y470 w145 h20 +Hidden%P3_ShowExeFilePathButton% vNewP3_ExeFilePath, %P3_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y473 w40 h15 +Hidden%P3_ShowMBCtrl% Checked%P3_MBCtrl% gRefNewP3_Label vNewP3_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y473 w40 h15 +Hidden%P3_ShowMBShift% Checked%P3_MBShift% gRefNewP3_Label vNewP3_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y473 w40 h15 +Hidden%P3_ShowMBAlt% Checked%P3_MBAlt% gRefNewP3_Label vNewP3_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y473 w40 h15 +Hidden%P3_ShowMBDrag% Checked%P3_MBDrag% gRefNewP3_Label vNewP3_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y535 w490 h105, Position 4
Gui, PieMenu:Add, Text, x85 y548 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y565 w155 h120 +AltSubmit Choose%PrevP4_Label% gRefNewP4_Label vNewP4_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y590 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y605 w475 h28 vtxtNewP4_Label, %txtPrevP4_Label%
Gui, PieMenu:Add, Text, x265 y555 w75 h15 +Hidden%ShowP4_OverrideLabel% vNewP4_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y550 w145 h20 +Hidden%ShowP4_OverrideLabel% vNewP4_OverrideLabel, %PrevP4_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y580 w80 h15 +Hidden%SendKeyShowP4_Label% vNewP4_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y575 w145 h20 +Hidden%SendKeyShowP4_Label%  vNewP4_SendKeystroke, %PrevP4_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y573 w80 h25 +Hidden%P4_ShowExeFilePathButton% gP4_SelectFile vNewP4_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y575 w145 h20 +Hidden%P4_ShowExeFilePathButton% vNewP4_ExeFilePath, %P4_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y578 w40 h15 +Hidden%P4_ShowMBCtrl% Checked%P4_MBCtrl% gRefNewP4_Label vNewP4_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y578 w40 h15 +Hidden%P4_ShowMBShift% Checked%P4_MBShift% gRefNewP4_Label vNewP4_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y578 w40 h15 +Hidden%P4_ShowMBAlt% Checked%P4_MBAlt% gRefNewP4_Label vNewP4_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y578 w40 h15 +Hidden%P4_ShowMBDrag% Checked%P4_MBDrag% gRefNewP4_Label vNewP4_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y640 w490 h105, Position 5
Gui, PieMenu:Add, Text, x85 y653 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y670 w155 h120 +AltSubmit Choose%PrevP5_Label% gRefNewP5_Label vNewP5_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y695 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y710 w475 h28 vtxtNewP5_Label, %txtPrevP5_Label%
Gui, PieMenu:Add, Text, x265 y660 w75 h15 +Hidden%ShowP5_OverrideLabel% vNewP5_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y655 w145 h20 +Hidden%ShowP5_OverrideLabel% vNewP5_OverrideLabel, %PrevP5_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y685 w80 h15 +Hidden%SendKeyShowP5_Label% vNewP5_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y680 w145 h20 +Hidden%SendKeyShowP5_Label%  vNewP5_SendKeystroke, %PrevP5_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y678 w80 h25 +Hidden%P5_ShowExeFilePathButton% gP5_SelectFile vNewP5_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y680 w145 h20 +Hidden%P5_ShowExeFilePathButton% vNewP5_ExeFilePath, %P5_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y683 w40 h15 +Hidden%P5_ShowMBCtrl% Checked%P5_MBCtrl% gRefNewP5_Label vNewP5_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y683 w40 h15 +Hidden%P5_ShowMBShift% Checked%P5_MBShift% gRefNewP5_Label vNewP5_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y683 w40 h15 +Hidden%P5_ShowMBAlt% Checked%P5_MBAlt% gRefNewP5_Label vNewP5_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y683 w40 h15 +Hidden%P5_ShowMBDrag% Checked%P5_MBDrag% gRefNewP5_Label vNewP5_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y745 w490 h105, Position 6
Gui, PieMenu:Add, Text, x85 y758 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y775 w155 h120 +AltSubmit Choose%PrevP6_Label% gRefNewP6_Label vNewP6_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y800 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y815 w475 h28 vtxtNewP6_Label, %txtPrevP6_Label%
Gui, PieMenu:Add, Text, x265 y765 w75 h15 +Hidden%ShowP6_OverrideLabel% vNewP6_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y760 w145 h20 +Hidden%ShowP6_OverrideLabel% vNewP6_OverrideLabel, %PrevP6_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y790 w80 h15 +Hidden%SendKeyShowP6_Label% vNewP6_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y785 w145 h20  +Hidden%SendKeyShowP6_Label%  vNewP6_SendKeystroke, %PrevP6_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y783 w80 h25 +Hidden%P6_ShowExeFilePathButton% gP6_SelectFile vNewP6_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y785 w145 h20 +Hidden%P6_ShowExeFilePathButton% vNewP6_ExeFilePath, %P6_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y788 w40 h15 +Hidden%P6_ShowMBCtrl% Checked%P6_MBCtrl% gRefNewP6_Label vNewP6_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y788 w40 h15 +Hidden%P6_ShowMBShift% Checked%P6_MBShift% gRefNewP6_Label vNewP6_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y788 w40 h15 +Hidden%P6_ShowMBAlt% Checked%P6_MBAlt% gRefNewP6_Label vNewP6_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y788 w40 h15 +Hidden%P6_ShowMBDrag% Checked%P6_MBDrag% gRefNewP6_Label vNewP6_MBDrag, Drag

Gui, PieMenu:Tab, 4, 1
Gui, PieMenu:Add, Picture, x223 y48 w48 h48, %A_ScriptDir%\Resources\1PieMenu\RPieMenuNull.png
Gui, PieMenu:Add, Text, x243 y66 w10 h15, M
Gui, PieMenu:Add, Text, x275 y50 w10 h15, 1
Gui, PieMenu:Add, Text, x245 y30 w10 h15, 2
Gui, PieMenu:Add, Text, x210 y50 w10 h15, 3
Gui, PieMenu:Add, Text, x210 y85 w10 h15, 4
Gui, PieMenu:Add, Text, x245 y100 w10 h15, 5
Gui, PieMenu:Add, Text, x275 y85 w10 h15, 6

Gui, PieMenu:Add, GroupBox, x5 y115 w490 h105, Position M
Gui, PieMenu:Add, Text, x85 y128 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y145 w155 h120 +AltSubmit Choose%PrevRnull_Label% gRefNewRnull_Label vNewRnull_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y170 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y185 w475 h28 vtxtNewRnull_Label, %txtPrevRnull_Label%
Gui, PieMenu:Add, Text, x265 y135 w75 h15 +Hidden%ShowRnull_OverrideLabel% vNewRnull_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y130 w145 h20 +Hidden%ShowRnull_OverrideLabel% vNewRnull_OverrideLabel, %PrevRnull_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y160 w80 h15 +Hidden%SendKeyShowRnull_Label% vNewRnull_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y155 w145 h20 +Hidden%SendKeyShowRnull_Label% vNewRnull_SendKeystroke, %PrevRnull_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y153 w80 h25 +Hidden%Rnull_ShowExeFilePathButton% gRnull_SelectFile vNewRnull_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y155 w145 h20 +Hidden%Rnull_ShowExeFilePathButton% vNewRnull_ExeFilePath, %Rnull_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y158 w40 h15 +Hidden%Rnull_ShowMBCtrl% Checked%Rnull_MBCtrl% gRefNewRnull_Label vNewRnull_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y158 w40 h15 +Hidden%Rnull_ShowMBShift% Checked%Rnull_MBShift% gRefNewRnull_Label vNewRnull_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y158 w40 h15 +Hidden%Rnull_ShowMBAlt% Checked%Rnull_MBAlt% gRefNewRnull_Label vNewRnull_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y158 w40 h15 +Hidden%Rnull_ShowMBDrag% Checked%Rnull_MBDrag% gRefNewRnull_Label vNewRnull_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y220 w490 h105, Position 1
Gui, PieMenu:Add, Text, x85 y233 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y250 w155 h120 +AltSubmit Choose%PrevR1_Label% gRefNewR1_Label vNewR1_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y275 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y290 w475 h28 vtxtNewR1_Label, %txtPrevR1_Label%
Gui, PieMenu:Add, Text, x265 y240 w75 h15 +Hidden%ShowR1_OverrideLabel% vNewR1_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y235 w145 h20 +Hidden%ShowR1_OverrideLabel% vNewR1_OverrideLabel, %PrevR1_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y265 w80 h15 +Hidden%SendKeyShowR1_Label% vNewR1_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y260 w145 h20 +Hidden%SendKeyShowR1_Label%  vNewR1_SendKeystroke, %PrevR1_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y258 w80 h25 +Hidden%R1_ShowExeFilePathButton% gR1_SelectFile vNewR1_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y260 w145 h20 +Hidden%R1_ShowExeFilePathButton% vNewR1_ExeFilePath, %R1_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y263 w40 h15 +Hidden%R1_ShowMBCtrl% Checked%R1_MBCtrl% gRefNewR1_Label vNewR1_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y263 w40 h15 +Hidden%R1_ShowMBShift% Checked%R1_MBShift% gRefNewR1_Label vNewR1_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y263 w40 h15 +Hidden%R1_ShowMBAlt% Checked%R1_MBAlt% gRefNewR1_Label vNewR1_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y263 w40 h15 +Hidden%R1_ShowMBDrag% Checked%R1_MBDrag% gRefNewR1_Label vNewR1_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y325 w490 h105, Position 2
Gui, PieMenu:Add, Text, x85 y338 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y355 w155 h120 +AltSubmit Choose%PrevR2_Label% gRefNewR2_Label vNewR2_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y380 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y395 w475 h28 vtxtNewR2_Label, %txtPrevR2_Label%
Gui, PieMenu:Add, Text, x265 y345 w75 h15 +Hidden%ShowR2_OverrideLabel% vNewR2_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y340 w145 h20 +Hidden%ShowR2_OverrideLabel% vNewR2_OverrideLabel, %PrevR2_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y370 w80 h15 +Hidden%SendKeyShowR2_Label% vNewR2_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y365 w145 h20 +Hidden%SendKeyShowR2_Label%  vNewR2_SendKeystroke, %PrevR2_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y363 w80 h25 +Hidden%R2_ShowExeFilePathButton% gR2_SelectFile vNewR2_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y365 w145 h20 +Hidden%R2_ShowExeFilePathButton% vNewR2_ExeFilePath, %R2_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y368 w40 h15 +Hidden%R2_ShowMBCtrl% Checked%R2_MBCtrl% gRefNewR2_Label vNewR2_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y368 w40 h15 +Hidden%R2_ShowMBShift% Checked%R2_MBShift% gRefNewR2_Label vNewR2_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y368 w40 h15 +Hidden%R2_ShowMBAlt% Checked%R2_MBAlt% gRefNewR2_Label vNewR2_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y368 w40 h15 +Hidden%R2_ShowMBDrag% Checked%R2_MBDrag% gRefNewR2_Label vNewR2_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y430 w490 h105, Position 3
Gui, PieMenu:Add, Text, x85 y443 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y460 w155 h120 +AltSubmit Choose%PrevR3_Label% gRefNewR3_Label vNewR3_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y485 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y500 w475 h28 vtxtNewR3_Label, %txtPrevR3_Label%
Gui, PieMenu:Add, Text, x265 y450 w75 h15 +Hidden%ShowR3_OverrideLabel% vNewR3_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y445 w145 h20 +Hidden%ShowR3_OverrideLabel% vNewR3_OverrideLabel, %PrevR3_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y475 w80 h15 +Hidden%SendKeyShowR3_Label% vNewR3_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y470 w145 h20 +Hidden%SendKeyShowR3_Label%  vNewR3_SendKeystroke, %PrevR3_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y468 w80 h25 +Hidden%R3_ShowExeFilePathButton% gR3_SelectFile vNewR3_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y470 w145 h20 +Hidden%R3_ShowExeFilePathButton% vNewR3_ExeFilePath, %R3_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y473 w40 h15 +Hidden%R3_ShowMBCtrl% Checked%R3_MBCtrl% gRefNewR3_Label vNewR3_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y473 w40 h15 +Hidden%R3_ShowMBShift% Checked%R3_MBShift% gRefNewR3_Label vNewR3_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y473 w40 h15 +Hidden%R3_ShowMBAlt% Checked%R3_MBAlt% gRefNewR3_Label vNewR3_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y473 w40 h15 +Hidden%R3_ShowMBDrag% Checked%R3_MBDrag% gRefNewR3_Label vNewR3_MBDrag, Drag


Gui, PieMenu:Add, GroupBox, x5 y535 w490 h105, Position 4
Gui, PieMenu:Add, Text, x85 y548 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y565 w155 h120 +AltSubmit Choose%PrevR4_Label% gRefNewR4_Label vNewR4_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y590 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y605 w475 h28 vtxtNewR4_Label, %txtPrevR4_Label%
Gui, PieMenu:Add, Text, x265 y555 w75 h15 +Hidden%ShowR4_OverrideLabel% vNewR4_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y550 w145 h20 +Hidden%ShowR4_OverrideLabel% vNewR4_OverrideLabel, %PrevR4_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y580 w80 h15 +Hidden%SendKeyShowR4_Label% vNewR4_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y575 w145 h20 +Hidden%SendKeyShowR4_Label%  vNewR4_SendKeystroke, %PrevR4_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y573 w80 h25 +Hidden%R4_ShowExeFilePathButton% gR4_SelectFile vNewR4_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y575 w145 h20 +Hidden%R4_ShowExeFilePathButton% vNewR4_ExeFilePath, %R4_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y578 w40 h15 +Hidden%R4_ShowMBCtrl% Checked%R4_MBCtrl% gRefNewR4_Label vNewR4_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y578 w40 h15 +Hidden%R4_ShowMBShift% Checked%R4_MBShift% gRefNewR4_Label vNewR4_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y578 w40 h15 +Hidden%R4_ShowMBAlt% Checked%R4_MBAlt% gRefNewR4_Label vNewR4_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y578 w40 h15 +Hidden%R4_ShowMBDrag% Checked%R4_MBDrag% gRefNewR4_Label vNewR4_MBDrag, Drag


Gui, PieMenu:Add, GroupBox, x5 y640 w490 h105, Position 5
Gui, PieMenu:Add, Text, x85 y653 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y670 w155 h120 +AltSubmit Choose%PrevR5_Label% gRefNewR5_Label vNewR5_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y695 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y710 w475 h28 vtxtNewR5_Label, %txtPrevR5_Label%
Gui, PieMenu:Add, Text, x265 y660 w75 h15 +Hidden%ShowR5_OverrideLabel% vNewR5_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y655 w145 h20 +Hidden%ShowR5_OverrideLabel% vNewR5_OverrideLabel, %PrevR5_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y685 w80 h15 +Hidden%SendKeyShowR5_Label% vNewR5_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y680 w145 h20 +Hidden%SendKeyShowR5_Label%  vNewR5_SendKeystroke, %PrevR5_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y678 w80 h25 +Hidden%R5_ShowExeFilePathButton% gR5_SelectFile vNewR5_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y680 w145 h20 +Hidden%R5_ShowExeFilePathButton% vNewR5_ExeFilePath, %R5_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y683 w40 h15 +Hidden%R5_ShowMBCtrl% Checked%R5_MBCtrl% gRefNewR5_Label vNewR5_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y683 w40 h15 +Hidden%R5_ShowMBShift% Checked%R5_MBShift% gRefNewR5_Label vNewR5_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y683 w40 h15 +Hidden%R5_ShowMBAlt% Checked%R5_MBAlt% gRefNewR5_Label vNewR5_MBAlt, Alt
Gui, PieMenu:Add, Checkbox, x410 y683 w40 h15 +Hidden%R5_ShowMBDrag% Checked%R5_MBDrag% gRefNewR5_Label vNewR5_MBDrag, Drag

Gui, PieMenu:Add, GroupBox, x5 y745 w490 h105, Position 6
Gui, PieMenu:Add, Text, x85 y758 w40 h15, Function
Gui, PieMenu:Add, DropDownList, x30 y775 w155 h120 +AltSubmit Choose%PrevR6_Label% gRefNewR6_Label vNewR6_Label, %FuncList%
Gui, PieMenu:Add, Text, x10 y800 w105 h15, Function Description:
Gui, PieMenu:Add, Text, x15 y815 w475 h28 vtxtNewR6_Label, %txtPrevR6_Label%
Gui, PieMenu:Add, Text, x265 y765 w75 h15 +Hidden%ShowR6_OverrideLabel% vNewR6_OverrideText, Override Label:
Gui, PieMenu:Add, Edit, x345 y760 w145 h20 +Hidden%ShowR6_OverrideLabel% vNewR6_OverrideLabel, %PrevR6_OverrideLabel%
Gui, PieMenu:Add, Text, x260 y790 w80 h15 +Hidden%SendKeyShowR6_Label% vNewR6_SendKeystrokeText, Send Keystroke:
Gui, PieMenu:Add, Hotkey, x345 y785 w145 h20  +Hidden%SendKeyShowR6_Label%  vNewR6_SendKeystroke, %PrevR6_SendKeystroke%
Gui, PieMenu:Add, Button, x260 y783 w80 h25 +Hidden%R6_ShowExeFilePathButton% gR6_SelectFile vNewR6_ExeFilePathButton, Select File
Gui, PieMenu:Add, Edit, x345 y785 w145 h20 +Hidden%R6_ShowExeFilePathButton% vNewR6_ExeFilePath, %R6_PrevExeFilePath%

Gui, PieMenu:Add, Checkbox, x270 y788 w40 h15 +Hidden%R6_ShowMBCtrl% Checked%R6_MBCtrl% gRefNewR6_Label vNewR6_MBCtrl, Ctrl
Gui, PieMenu:Add, Checkbox, x310 y788 w40 h15 +Hidden%R6_ShowMBShift% Checked%R6_MBShift% gRefNewR6_Label vNewR6_MBShift, Shift
Gui, PieMenu:Add, Checkbox, x350 y788 w40 h15 +Hidden%R6_ShowMBAlt% Checked%R6_MBAlt% gRefNewR6_Label vNewR6_MBAlt, Alt	
Gui, PieMenu:Add, Checkbox, x410 y788 w40 h15 +Hidden%R6_ShowMBDrag% Checked%R6_MBDrag% gRefNewR6_Label vNewR6_MBDrag, Drag	
	
;Dont touch this
Gui, PieMenu:Show, w507 h895, Pie Menu Settings for %AppTitle%
return

Bnull_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewBnull_ExeFilePath, %A_ScriptDir%, %NewBnull_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewBnull_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewBnull_ExeFilePath := SubStr(NewBnull_ExeFilePath, ExeFilePathTrim)
	NewBnull_ExeFilePath := "%A_WorkingDir%\Resources\"NewBnull_ExeFilePath
	}
guicontrol, , NewBnull_ExeFilePath, %NewBnull_ExeFilePath%
RefNewBnull_Label:
Gui, Submit, NoHide
If NewBnull_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewBnull_OverrideText
	guicontrol, Show, NewBnull_OverrideLabel
	guicontrol, Show, NewBnull_ExeFilePathButton
	guicontrol, Show, NewBnull_ExeFilePath
	guicontrol, Hide, NewBnull_SendKeystroke
	guicontrol, Hide, NewBnull_SendKeystrokeText
	guicontrol, Hide, NewBnull_MBCtrl
	guicontrol, Hide, NewBnull_MBAlt
	guicontrol, Hide, NewBnull_MBShift
	guicontrol, Hide, NewBnull_MBDrag
	}
If NewBnull_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewBnull_OverrideText
	guicontrol, Show, NewBnull_OverrideLabel
	guicontrol, Show, NewBnull_SendKeystroke
	guicontrol, Show, NewBnull_SendKeystrokeText
	guicontrol, Hide, NewBnull_ExeFilePathButton
	guicontrol, Hide, NewBnull_ExeFilePath
	guicontrol, Hide, NewBnull_MBCtrl
	guicontrol, Hide, NewBnull_MBAlt
	guicontrol, Hide, NewBnull_MBShift
	guicontrol, Hide, NewBnull_MBDrag
	}
If NewBnull_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewBnull_OverrideText
	guicontrol, Show, NewBnull_OverrideLabel
	guicontrol, Hide, NewBnull_SendKeystroke
	guicontrol, Hide, NewBnull_SendKeystrokeText
	guicontrol, Hide, NewBnull_ExeFilePathButton
	guicontrol, Hide, NewBnull_ExeFilePath
	guicontrol, Show, NewBnull_MBCtrl
	guicontrol, Show, NewBnull_MBAlt
	guicontrol, Show, NewBnull_MBShift
	guicontrol, Show, NewBnull_MBDrag
	}
If NewBnull_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewBnull_OverrideText
	guicontrol, Hide, NewBnull_OverrideLabel
	guicontrol, Hide, NewBnull_SendKeystroke
	guicontrol, Hide, NewBnull_SendKeystrokeText
	guicontrol, Hide, NewBnull_ExeFilePathButton
	guicontrol, Hide, NewBnull_ExeFilePath
	guicontrol, Hide, NewBnull_MBCtrl
	guicontrol, Hide, NewBnull_MBAlt
	guicontrol, Hide, NewBnull_MBShift
	guicontrol, Hide, NewBnull_MBDrag
	}
FileReadLine, isotextNewBnull_Label,%A_ScriptDir%\Resources\Functions.txt, NewBnull_Label
isotextNewBnull_Label := StrSplit(isotextNewBnull_Label, ":")
guicontrol, , txtNewBnull_Label, % isotextNewBnull_Label[2]
Return



B1_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB1_ExeFilePath, %A_ScriptDir%, %NewB1_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB1_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB1_ExeFilePath := SubStr(NewB1_ExeFilePath, ExeFilePathTrim)
	NewB1_ExeFilePath := "%A_WorkingDir%\Resources\"NewB1_ExeFilePath
	}
guicontrol, , NewB1_ExeFilePath, %NewB1_ExeFilePath%
RefNewB1_Label:
Gui, Submit, NoHide
If NewB1_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB1_OverrideText
	guicontrol, Show, NewB1_OverrideLabel
	guicontrol, Show, NewB1_ExeFilePathButton
	guicontrol, Show, NewB1_ExeFilePath
	guicontrol, Hide, NewB1_SendKeystroke
	guicontrol, Hide, NewB1_SendKeystrokeText
	guicontrol, Hide, NewB1_MBCtrl
	guicontrol, Hide, NewB1_MBAlt
	guicontrol, Hide, NewB1_MBShift
	guicontrol, Hide, NewB1_MBDrag
	}
If NewB1_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB1_OverrideText
	guicontrol, Show, NewB1_OverrideLabel
	guicontrol, Show, NewB1_SendKeystroke
	guicontrol, Show, NewB1_SendKeystrokeText
	guicontrol, Hide, NewB1_ExeFilePathButton
	guicontrol, Hide, NewB1_ExeFilePath
	guicontrol, Hide, NewB1_MBCtrl
	guicontrol, Hide, NewB1_MBAlt
	guicontrol, Hide, NewB1_MBShift
	guicontrol, Hide, NewB1_MBDrag
	}
If NewB1_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB1_OverrideText
	guicontrol, Show, NewB1_OverrideLabel
	guicontrol, Hide, NewB1_SendKeystroke
	guicontrol, Hide, NewB1_SendKeystrokeText
	guicontrol, Hide, NewB1_ExeFilePathButton
	guicontrol, Hide, NewB1_ExeFilePath
	guicontrol, Show, NewB1_MBCtrl
	guicontrol, Show, NewB1_MBAlt
	guicontrol, Show, NewB1_MBShift
	guicontrol, Show, NewB1_MBDrag
	}
If NewB1_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB1_OverrideText
	guicontrol, Hide, NewB1_OverrideLabel
	guicontrol, Hide, NewB1_SendKeystroke
	guicontrol, Hide, NewB1_SendKeystrokeText
	guicontrol, Hide, NewB1_ExeFilePathButton
	guicontrol, Hide, NewB1_ExeFilePath
	guicontrol, Hide, NewB1_MBCtrl
	guicontrol, Hide, NewB1_MBAlt
	guicontrol, Hide, NewB1_MBShift
	guicontrol, Hide, NewB1_MBDrag
	}
FileReadLine, isotextNewB1_Label,%A_ScriptDir%\Resources\Functions.txt, NewB1_Label
isotextNewB1_Label := StrSplit(isotextNewB1_Label, ":")
guicontrol, , txtNewB1_Label, % isotextNewB1_Label[2]
Return

B2_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB2_ExeFilePath, %A_ScriptDir%, %NewB2_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB2_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB2_ExeFilePath := SubStr(NewB2_ExeFilePath, ExeFilePathTrim)
	NewB2_ExeFilePath := "%A_WorkingDir%\Resources\"NewB2_ExeFilePath
	}
guicontrol, , NewB2_ExeFilePath, %NewB2_ExeFilePath%
RefNewB2_Label:
Gui, Submit, NoHide
If NewB2_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB2_OverrideText
	guicontrol, Show, NewB2_OverrideLabel
	guicontrol, Show, NewB2_ExeFilePathButton
	guicontrol, Show, NewB2_ExeFilePath
	guicontrol, Hide, NewB2_SendKeystroke
	guicontrol, Hide, NewB2_SendKeystrokeText
	guicontrol, Hide, NewB2_MBCtrl
	guicontrol, Hide, NewB2_MBAlt
	guicontrol, Hide, NewB2_MBShift
	guicontrol, Hide, NewB2_MBDrag
	}
If NewB2_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB2_OverrideText
	guicontrol, Show, NewB2_OverrideLabel
	guicontrol, Show, NewB2_SendKeystroke
	guicontrol, Show, NewB2_SendKeystrokeText
	guicontrol, Hide, NewB2_ExeFilePathButton
	guicontrol, Hide, NewB2_ExeFilePath
	guicontrol, Hide, NewB2_MBCtrl
	guicontrol, Hide, NewB2_MBAlt
	guicontrol, Hide, NewB2_MBShift
	guicontrol, Hide, NewB2_MBDrag
	}
If NewB2_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB2_OverrideText
	guicontrol, Show, NewB2_OverrideLabel
	guicontrol, Hide, NewB2_SendKeystroke
	guicontrol, Hide, NewB2_SendKeystrokeText
	guicontrol, Hide, NewB2_ExeFilePathButton
	guicontrol, Hide, NewB2_ExeFilePath
	guicontrol, Show, NewB2_MBCtrl
	guicontrol, Show, NewB2_MBAlt
	guicontrol, Show, NewB2_MBShift
	guicontrol, Show, NewB2_MBDrag
	}
If NewB2_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB2_OverrideText
	guicontrol, Hide, NewB2_OverrideLabel
	guicontrol, Hide, NewB2_SendKeystroke
	guicontrol, Hide, NewB2_SendKeystrokeText
	guicontrol, Hide, NewB2_ExeFilePathButton
	guicontrol, Hide, NewB2_ExeFilePath
	guicontrol, Hide, NewB2_MBCtrl
	guicontrol, Hide, NewB2_MBAlt
	guicontrol, Hide, NewB2_MBShift
	guicontrol, Hide, NewB2_MBDrag
	}
FileReadLine, isotextNewB2_Label,%A_ScriptDir%\Resources\Functions.txt, NewB2_Label
isotextNewB2_Label := StrSplit(isotextNewB2_Label, ":")
guicontrol, , txtNewB2_Label, % isotextNewB2_Label[2]
Return

B3_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB3_ExeFilePath, %A_ScriptDir%, %NewB3_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB3_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB3_ExeFilePath := SubStr(NewB3_ExeFilePath, ExeFilePathTrim)
	NewB3_ExeFilePath := "%A_WorkingDir%\Resources\"NewB3_ExeFilePath
	}
guicontrol, , NewB3_ExeFilePath, %NewB3_ExeFilePath%
RefNewB3_Label:
Gui, Submit, NoHide
If NewB3_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB3_OverrideText
	guicontrol, Show, NewB3_OverrideLabel
	guicontrol, Show, NewB3_ExeFilePathButton
	guicontrol, Show, NewB3_ExeFilePath
	guicontrol, Hide, NewB3_SendKeystroke
	guicontrol, Hide, NewB3_SendKeystrokeText
	guicontrol, Hide, NewB3_MBCtrl
	guicontrol, Hide, NewB3_MBAlt
	guicontrol, Hide, NewB3_MBShift
	guicontrol, Hide, NewB3_MBDrag
	}
If NewB3_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB3_OverrideText
	guicontrol, Show, NewB3_OverrideLabel
	guicontrol, Show, NewB3_SendKeystroke
	guicontrol, Show, NewB3_SendKeystrokeText
	guicontrol, Hide, NewB3_ExeFilePathButton
	guicontrol, Hide, NewB3_ExeFilePath
	guicontrol, Hide, NewB3_MBCtrl
	guicontrol, Hide, NewB3_MBAlt
	guicontrol, Hide, NewB3_MBShift
	guicontrol, Hide, NewB3_MBDrag
	}
If NewB3_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB3_OverrideText
	guicontrol, Show, NewB3_OverrideLabel
	guicontrol, Hide, NewB3_SendKeystroke
	guicontrol, Hide, NewB3_SendKeystrokeText
	guicontrol, Hide, NewB3_ExeFilePathButton
	guicontrol, Hide, NewB3_ExeFilePath
	guicontrol, Show, NewB3_MBCtrl
	guicontrol, Show, NewB3_MBAlt
	guicontrol, Show, NewB3_MBShift
	guicontrol, Show, NewB3_MBDrag
	}
If NewB3_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB3_OverrideText
	guicontrol, Hide, NewB3_OverrideLabel
	guicontrol, Hide, NewB3_SendKeystroke
	guicontrol, Hide, NewB3_SendKeystrokeText
	guicontrol, Hide, NewB3_ExeFilePathButton
	guicontrol, Hide, NewB3_ExeFilePath
	guicontrol, Hide, NewB3_MBCtrl
	guicontrol, Hide, NewB3_MBAlt
	guicontrol, Hide, NewB3_MBShift
	guicontrol, Hide, NewB3_MBDrag
	}
FileReadLine, isotextNewB3_Label,%A_ScriptDir%\Resources\Functions.txt, NewB3_Label
isotextNewB3_Label := StrSplit(isotextNewB3_Label, ":")
guicontrol, , txtNewB3_Label, % isotextNewB3_Label[2]
Return


B4_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB4_ExeFilePath, %A_ScriptDir%, %NewB4_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB4_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB4_ExeFilePath := SubStr(NewB4_ExeFilePath, ExeFilePathTrim)
	NewB4_ExeFilePath := "%A_WorkingDir%\Resources\"NewB4_ExeFilePath
	}
guicontrol, , NewB4_ExeFilePath, %NewB4_ExeFilePath%
RefNewB4_Label:
Gui, Submit, NoHide
If NewB4_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB4_OverrideText
	guicontrol, Show, NewB4_OverrideLabel
	guicontrol, Show, NewB4_ExeFilePathButton
	guicontrol, Show, NewB4_ExeFilePath
	guicontrol, Hide, NewB4_SendKeystroke
	guicontrol, Hide, NewB4_SendKeystrokeText
	guicontrol, Hide, NewB4_MBCtrl
	guicontrol, Hide, NewB4_MBAlt
	guicontrol, Hide, NewB4_MBShift
	guicontrol, Hide, NewB4_MBDrag
	}
If NewB4_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB4_OverrideText
	guicontrol, Show, NewB4_OverrideLabel
	guicontrol, Show, NewB4_SendKeystroke
	guicontrol, Show, NewB4_SendKeystrokeText
	guicontrol, Hide, NewB4_ExeFilePathButton
	guicontrol, Hide, NewB4_ExeFilePath
	guicontrol, Hide, NewB4_MBCtrl
	guicontrol, Hide, NewB4_MBAlt
	guicontrol, Hide, NewB4_MBShift
	guicontrol, Hide, NewB4_MBDrag
	}
If NewB4_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB4_OverrideText
	guicontrol, Show, NewB4_OverrideLabel
	guicontrol, Hide, NewB4_SendKeystroke
	guicontrol, Hide, NewB4_SendKeystrokeText
	guicontrol, Hide, NewB4_ExeFilePathButton
	guicontrol, Hide, NewB4_ExeFilePath
	guicontrol, Show, NewB4_MBCtrl
	guicontrol, Show, NewB4_MBAlt
	guicontrol, Show, NewB4_MBShift
	guicontrol, Show, NewB4_MBDrag
	}
If NewB4_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB4_OverrideText
	guicontrol, Hide, NewB4_OverrideLabel
	guicontrol, Hide, NewB4_SendKeystroke
	guicontrol, Hide, NewB4_SendKeystrokeText
	guicontrol, Hide, NewB4_ExeFilePathButton
	guicontrol, Hide, NewB4_ExeFilePath
	guicontrol, Hide, NewB4_MBCtrl
	guicontrol, Hide, NewB4_MBAlt
	guicontrol, Hide, NewB4_MBShift
	guicontrol, Hide, NewB4_MBDrag
	}
FileReadLine, isotextNewB4_Label,%A_ScriptDir%\Resources\Functions.txt, NewB4_Label
isotextNewB4_Label := StrSplit(isotextNewB4_Label, ":")
guicontrol, , txtNewB4_Label, % isotextNewB4_Label[2]
Return

B5_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB5_ExeFilePath, %A_ScriptDir%, %NewB5_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB5_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB5_ExeFilePath := SubStr(NewB5_ExeFilePath, ExeFilePathTrim)
	NewB5_ExeFilePath := "%A_WorkingDir%\Resources\"NewB5_ExeFilePath
	}
guicontrol, , NewB5_ExeFilePath, %NewB5_ExeFilePath%
RefNewB5_Label:
Gui, Submit, NoHide
If NewB5_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB5_OverrideText
	guicontrol, Show, NewB5_OverrideLabel
	guicontrol, Show, NewB5_ExeFilePathButton
	guicontrol, Show, NewB5_ExeFilePath
	guicontrol, Hide, NewB5_SendKeystroke
	guicontrol, Hide, NewB5_SendKeystrokeText
	guicontrol, Hide, NewB5_MBCtrl
	guicontrol, Hide, NewB5_MBAlt
	guicontrol, Hide, NewB5_MBShift
	guicontrol, Hide, NewB5_MBDrag
	}
If NewB5_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB5_OverrideText
	guicontrol, Show, NewB5_OverrideLabel
	guicontrol, Show, NewB5_SendKeystroke
	guicontrol, Show, NewB5_SendKeystrokeText
	guicontrol, Hide, NewB5_ExeFilePathButton
	guicontrol, Hide, NewB5_ExeFilePath
	guicontrol, Hide, NewB5_MBCtrl
	guicontrol, Hide, NewB5_MBAlt
	guicontrol, Hide, NewB5_MBShift
	guicontrol, Hide, NewB5_MBDrag
	}
If NewB5_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB5_OverrideText
	guicontrol, Show, NewB5_OverrideLabel
	guicontrol, Hide, NewB5_SendKeystroke
	guicontrol, Hide, NewB5_SendKeystrokeText
	guicontrol, Hide, NewB5_ExeFilePathButton
	guicontrol, Hide, NewB5_ExeFilePath
	guicontrol, Show, NewB5_MBCtrl
	guicontrol, Show, NewB5_MBAlt
	guicontrol, Show, NewB5_MBShift
	guicontrol, Show, NewB5_MBDrag
	}
If NewB5_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB5_OverrideText
	guicontrol, Hide, NewB5_OverrideLabel
	guicontrol, Hide, NewB5_SendKeystroke
	guicontrol, Hide, NewB5_SendKeystrokeText
	guicontrol, Hide, NewB5_ExeFilePathButton
	guicontrol, Hide, NewB5_ExeFilePath
	guicontrol, Hide, NewB5_MBCtrl
	guicontrol, Hide, NewB5_MBAlt
	guicontrol, Hide, NewB5_MBShift
	guicontrol, Hide, NewB5_MBDrag
	}
FileReadLine, isotextNewB5_Label,%A_ScriptDir%\Resources\Functions.txt, NewB5_Label
isotextNewB5_Label := StrSplit(isotextNewB5_Label, ":")
guicontrol, , txtNewB5_Label, % isotextNewB5_Label[2]
Return

B6_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewB6_ExeFilePath, %A_ScriptDir%, %NewB6_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewB6_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewB6_ExeFilePath := SubStr(NewB6_ExeFilePath, ExeFilePathTrim)
	NewB6_ExeFilePath := "%A_WorkingDir%\Resources\"NewB6_ExeFilePath
	}
guicontrol, , NewB6_ExeFilePath, %NewB6_ExeFilePath%
RefNewB6_Label:
Gui, Submit, NoHide
If NewB6_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewB6_OverrideText
	guicontrol, Show, NewB6_OverrideLabel
	guicontrol, Show, NewB6_ExeFilePathButton
	guicontrol, Show, NewB6_ExeFilePath
	guicontrol, Hide, NewB6_SendKeystroke
	guicontrol, Hide, NewB6_SendKeystrokeText
	guicontrol, Hide, NewB6_MBCtrl
	guicontrol, Hide, NewB6_MBAlt
	guicontrol, Hide, NewB6_MBShift
	guicontrol, Hide, NewB6_MBDrag
	}
If NewB6_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewB6_OverrideText
	guicontrol, Show, NewB6_OverrideLabel
	guicontrol, Show, NewB6_SendKeystroke
	guicontrol, Show, NewB6_SendKeystrokeText
	guicontrol, Hide, NewB6_ExeFilePathButton
	guicontrol, Hide, NewB6_ExeFilePath
	guicontrol, Hide, NewB6_MBCtrl
	guicontrol, Hide, NewB6_MBAlt
	guicontrol, Hide, NewB6_MBShift
	guicontrol, Hide, NewB6_MBDrag
	}
If NewB6_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewB6_OverrideText
	guicontrol, Show, NewB6_OverrideLabel
	guicontrol, Hide, NewB6_SendKeystroke
	guicontrol, Hide, NewB6_SendKeystrokeText
	guicontrol, Hide, NewB6_ExeFilePathButton
	guicontrol, Hide, NewB6_ExeFilePath
	guicontrol, Show, NewB6_MBCtrl
	guicontrol, Show, NewB6_MBAlt
	guicontrol, Show, NewB6_MBShift
	guicontrol, Show, NewB6_MBDrag
	}
If NewB6_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewB6_OverrideText
	guicontrol, Hide, NewB6_OverrideLabel
	guicontrol, Hide, NewB6_SendKeystroke
	guicontrol, Hide, NewB6_SendKeystrokeText
	guicontrol, Hide, NewB6_ExeFilePathButton
	guicontrol, Hide, NewB6_ExeFilePath
	guicontrol, Hide, NewB6_MBCtrl
	guicontrol, Hide, NewB6_MBAlt
	guicontrol, Hide, NewB6_MBShift
	guicontrol, Hide, NewB6_MBDrag
	}
FileReadLine, isotextNewB6_Label,%A_ScriptDir%\Resources\Functions.txt, NewB6_Label
isotextNewB6_Label := StrSplit(isotextNewB6_Label, ":")
guicontrol, , txtNewB6_Label, % isotextNewB6_Label[2]
Return

Pnull_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewPnull_ExeFilePath, %A_ScriptDir%, %NewPnull_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewPnulll_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewPnulll_ExeFilePath := SubStr(NewPnulll_ExeFilePath, ExeFilePathTrim)
	NewPnulll_ExeFilePath := "%A_WorkingDir%\Resources\"NewPnulll_ExeFilePath
	}
guicontrol, , NewPnull_ExeFilePath, %NewPnull_ExeFilePath%
RefNewPnull_Label:
Gui, Submit, NoHide
If NewPnull_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewPnull_OverrideText
	guicontrol, Show, NewPnull_OverrideLabel
	guicontrol, Show, NewPnull_ExeFilePathButton
	guicontrol, Show, NewPnull_ExeFilePath
	guicontrol, Hide, NewPnull_SendKeystroke
	guicontrol, Hide, NewPnull_SendKeystrokeText
	guicontrol, Hide, NewPnull_MBCtrl
	guicontrol, Hide, NewPnull_MBAlt
	guicontrol, Hide, NewPnull_MBShift
	guicontrol, Hide, NewPnull_MBDrag
	}
If NewPnull_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewPnull_OverrideText
	guicontrol, Show, NewPnull_OverrideLabel
	guicontrol, Show, NewPnull_SendKeystroke
	guicontrol, Show, NewPnull_SendKeystrokeText
	guicontrol, Hide, NewPnull_ExeFilePathButton
	guicontrol, Hide, NewPnull_ExeFilePath
	guicontrol, Hide, NewPnull_MBCtrl
	guicontrol, Hide, NewPnull_MBAlt
	guicontrol, Hide, NewPnull_MBShift
	guicontrol, Hide, NewPnull_MBDrag
	}
If NewPnull_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewPnull_OverrideText
	guicontrol, Show, NewPnull_OverrideLabel
	guicontrol, Hide, NewPnull_SendKeystroke
	guicontrol, Hide, NewPnull_SendKeystrokeText
	guicontrol, Hide, NewPnull_ExeFilePathButton
	guicontrol, Hide, NewPnull_ExeFilePath
	guicontrol, Show, NewPnull_MBCtrl
	guicontrol, Show, NewPnull_MBAlt
	guicontrol, Show, NewPnull_MBShift
	guicontrol, Show, NewPnull_MBDrag
	}
If NewPnull_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewPnull_OverrideText
	guicontrol, Hide, NewPnull_OverrideLabel
	guicontrol, Hide, NewPnull_SendKeystroke
	guicontrol, Hide, NewPnull_SendKeystrokeText
	guicontrol, Hide, NewPnull_ExeFilePathButton
	guicontrol, Hide, NewPnull_ExeFilePath
	guicontrol, Hide, NewPnull_MBCtrl
	guicontrol, Hide, NewPnull_MBAlt
	guicontrol, Hide, NewPnull_MBShift
	guicontrol, Hide, NewPnull_MBDrag
	}
FileReadLine, isotextNewPnull_Label,%A_ScriptDir%\Resources\Functions.txt, NewPnull_Label
isotextNewPnull_Label := StrSplit(isotextNewPnull_Label, ":")
guicontrol, , txtNewPnull_Label, % isotextNewPnull_Label[2]
Return



P1_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP1_ExeFilePath, %A_ScriptDir%, %NewP1_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP1_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP1_ExeFilePath := SubStr(NewP1_ExeFilePath, ExeFilePathTrim)
	NewP1_ExeFilePath := "%A_WorkingDir%\Resources\"NewP1_ExeFilePath
	}
guicontrol, , NewP1_ExeFilePath, %NewP1_ExeFilePath%
RefNewP1_Label:
Gui, Submit, NoHide
If NewP1_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP1_OverrideText
	guicontrol, Show, NewP1_OverrideLabel
	guicontrol, Show, NewP1_ExeFilePathButton
	guicontrol, Show, NewP1_ExeFilePath
	guicontrol, Hide, NewP1_SendKeystroke
	guicontrol, Hide, NewP1_SendKeystrokeText
	guicontrol, Hide, NewP1_MBCtrl
	guicontrol, Hide, NewP1_MBAlt
	guicontrol, Hide, NewP1_MBShift
	guicontrol, Hide, NewP1_MBDrag
	}
If NewP1_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP1_OverrideText
	guicontrol, Show, NewP1_OverrideLabel
	guicontrol, Show, NewP1_SendKeystroke
	guicontrol, Show, NewP1_SendKeystrokeText
	guicontrol, Hide, NewP1_ExeFilePathButton
	guicontrol, Hide, NewP1_ExeFilePath
	guicontrol, Hide, NewP1_MBCtrl
	guicontrol, Hide, NewP1_MBAlt
	guicontrol, Hide, NewP1_MBShift
	guicontrol, Hide, NewP1_MBDrag
	}
If NewP1_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP1_OverrideText
	guicontrol, Show, NewP1_OverrideLabel
	guicontrol, Hide, NewP1_SendKeystroke
	guicontrol, Hide, NewP1_SendKeystrokeText
	guicontrol, Hide, NewP1_ExeFilePathButton
	guicontrol, Hide, NewP1_ExeFilePath
	guicontrol, Show, NewP1_MBCtrl
	guicontrol, Show, NewP1_MBAlt
	guicontrol, Show, NewP1_MBShift
	guicontrol, Show, NewP1_MBDrag
	}
If NewP1_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP1_OverrideText
	guicontrol, Hide, NewP1_OverrideLabel
	guicontrol, Hide, NewP1_SendKeystroke
	guicontrol, Hide, NewP1_SendKeystrokeText
	guicontrol, Hide, NewP1_ExeFilePathButton
	guicontrol, Hide, NewP1_ExeFilePath
	guicontrol, Hide, NewP1_MBCtrl
	guicontrol, Hide, NewP1_MBAlt
	guicontrol, Hide, NewP1_MBShift
	guicontrol, Hide, NewP1_MBDrag
	}
FileReadLine, isotextNewP1_Label,%A_ScriptDir%\Resources\Functions.txt, NewP1_Label
isotextNewP1_Label := StrSplit(isotextNewP1_Label, ":")
guicontrol, , txtNewP1_Label, % isotextNewP1_Label[2]
Return

P2_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP2_ExeFilePath, %A_ScriptDir%, %NewP2_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP2_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP2_ExeFilePath := SubStr(NewP2_ExeFilePath, ExeFilePathTrim)
	NewP2_ExeFilePath := "%A_WorkingDir%\Resources\"NewP2_ExeFilePath
	}
guicontrol, , NewP2_ExeFilePath, %NewP2_ExeFilePath%
RefNewP2_Label:
Gui, Submit, NoHide
If NewP2_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP2_OverrideText
	guicontrol, Show, NewP2_OverrideLabel
	guicontrol, Show, NewP2_ExeFilePathButton
	guicontrol, Show, NewP2_ExeFilePath
	guicontrol, Hide, NewP2_SendKeystroke
	guicontrol, Hide, NewP2_SendKeystrokeText
	guicontrol, Hide, NewP2_MBCtrl
	guicontrol, Hide, NewP2_MBAlt
	guicontrol, Hide, NewP2_MBShift
	guicontrol, Hide, NewP2_MBDrag
	}
If NewP2_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP2_OverrideText
	guicontrol, Show, NewP2_OverrideLabel
	guicontrol, Show, NewP2_SendKeystroke
	guicontrol, Show, NewP2_SendKeystrokeText
	guicontrol, Hide, NewP2_ExeFilePathButton
	guicontrol, Hide, NewP2_ExeFilePath
	guicontrol, Hide, NewP2_MBCtrl
	guicontrol, Hide, NewP2_MBAlt
	guicontrol, Hide, NewP2_MBShift
	guicontrol, Hide, NewP2_MBDrag
	}
If NewP2_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP2_OverrideText
	guicontrol, Show, NewP2_OverrideLabel
	guicontrol, Hide, NewP2_SendKeystroke
	guicontrol, Hide, NewP2_SendKeystrokeText
	guicontrol, Hide, NewP2_ExeFilePathButton
	guicontrol, Hide, NewP2_ExeFilePath
	guicontrol, Show, NewP2_MBCtrl
	guicontrol, Show, NewP2_MBAlt
	guicontrol, Show, NewP2_MBShift
	guicontrol, Show, NewP2_MBDrag
	}
If NewP2_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP2_OverrideText
	guicontrol, Hide, NewP2_OverrideLabel
	guicontrol, Hide, NewP2_SendKeystroke
	guicontrol, Hide, NewP2_SendKeystrokeText
	guicontrol, Hide, NewP2_ExeFilePathButton
	guicontrol, Hide, NewP2_ExeFilePath
	guicontrol, Hide, NewP2_MBCtrl
	guicontrol, Hide, NewP2_MBAlt
	guicontrol, Hide, NewP2_MBShift
	guicontrol, Hide, NewP2_MBDrag
	}
FileReadLine, isotextNewP2_Label,%A_ScriptDir%\Resources\Functions.txt, NewP2_Label
isotextNewP2_Label := StrSplit(isotextNewP2_Label, ":")
guicontrol, , txtNewP2_Label, % isotextNewP2_Label[2]
Return

P3_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP3_ExeFilePath, %A_ScriptDir%, %NewP3_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP3_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP3_ExeFilePath := SubStr(NewP3_ExeFilePath, ExeFilePathTrim)
	NewP3_ExeFilePath := "%A_WorkingDir%\Resources\"NewP3_ExeFilePath
	}
guicontrol, , NewP3_ExeFilePath, %NewP3_ExeFilePath%
RefNewP3_Label:
Gui, Submit, NoHide
If NewP3_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP3_OverrideText
	guicontrol, Show, NewP3_OverrideLabel
	guicontrol, Show, NewP3_ExeFilePathButton
	guicontrol, Show, NewP3_ExeFilePath
	guicontrol, Hide, NewP3_SendKeystroke
	guicontrol, Hide, NewP3_SendKeystrokeText
	guicontrol, Hide, NewP3_MBCtrl
	guicontrol, Hide, NewP3_MBAlt
	guicontrol, Hide, NewP3_MBShift
	guicontrol, Hide, NewP3_MBDrag
	}
If NewP3_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP3_OverrideText
	guicontrol, Show, NewP3_OverrideLabel
	guicontrol, Show, NewP3_SendKeystroke
	guicontrol, Show, NewP3_SendKeystrokeText
	guicontrol, Hide, NewP3_ExeFilePathButton
	guicontrol, Hide, NewP3_ExeFilePath
	guicontrol, Hide, NewP3_MBCtrl
	guicontrol, Hide, NewP3_MBAlt
	guicontrol, Hide, NewP3_MBShift
	guicontrol, Hide, NewP3_MBDrag
	}
If NewP3_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP3_OverrideText
	guicontrol, Show, NewP3_OverrideLabel
	guicontrol, Hide, NewP3_SendKeystroke
	guicontrol, Hide, NewP3_SendKeystrokeText
	guicontrol, Hide, NewP3_ExeFilePathButton
	guicontrol, Hide, NewP3_ExeFilePath
	guicontrol, Show, NewP3_MBCtrl
	guicontrol, Show, NewP3_MBAlt
	guicontrol, Show, NewP3_MBShift
	guicontrol, Show, NewP3_MBDrag
	}
If NewP3_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP3_OverrideText
	guicontrol, Hide, NewP3_OverrideLabel
	guicontrol, Hide, NewP3_SendKeystroke
	guicontrol, Hide, NewP3_SendKeystrokeText
	guicontrol, Hide, NewP3_ExeFilePathButton
	guicontrol, Hide, NewP3_ExeFilePath
	guicontrol, Hide, NewP3_MBCtrl
	guicontrol, Hide, NewP3_MBAlt
	guicontrol, Hide, NewP3_MBShift
	guicontrol, Hide, NewP3_MBDrag
	}
FileReadLine, isotextNewP3_Label,%A_ScriptDir%\Resources\Functions.txt, NewP3_Label
isotextNewP3_Label := StrSplit(isotextNewP3_Label, ":")
guicontrol, , txtNewP3_Label, % isotextNewP3_Label[2]
Return


P4_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP4_ExeFilePath, %A_ScriptDir%, %NewP4_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP4_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP4_ExeFilePath := SubStr(NewP4_ExeFilePath, ExeFilePathTrim)
	NewP4_ExeFilePath := "%A_WorkingDir%\Resources\"NewP4_ExeFilePath
	}
guicontrol, , NewP4_ExeFilePath, %NewP4_ExeFilePath%
RefNewP4_Label:
Gui, Submit, NoHide
If NewP4_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP4_OverrideText
	guicontrol, Show, NewP4_OverrideLabel
	guicontrol, Show, NewP4_ExeFilePathButton
	guicontrol, Show, NewP4_ExeFilePath
	guicontrol, Hide, NewP4_SendKeystroke
	guicontrol, Hide, NewP4_SendKeystrokeText
	guicontrol, Hide, NewP4_MBCtrl
	guicontrol, Hide, NewP4_MBAlt
	guicontrol, Hide, NewP4_MBShift
	guicontrol, Hide, NewP4_MBDrag
	}
If NewP4_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP4_OverrideText
	guicontrol, Show, NewP4_OverrideLabel
	guicontrol, Show, NewP4_SendKeystroke
	guicontrol, Show, NewP4_SendKeystrokeText
	guicontrol, Hide, NewP4_ExeFilePathButton
	guicontrol, Hide, NewP4_ExeFilePath
	guicontrol, Hide, NewP4_MBCtrl
	guicontrol, Hide, NewP4_MBAlt
	guicontrol, Hide, NewP4_MBShift
	guicontrol, Hide, NewP4_MBDrag
	}
If NewP4_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP4_OverrideText
	guicontrol, Show, NewP4_OverrideLabel
	guicontrol, Hide, NewP4_SendKeystroke
	guicontrol, Hide, NewP4_SendKeystrokeText
	guicontrol, Hide, NewP4_ExeFilePathButton
	guicontrol, Hide, NewP4_ExeFilePath
	guicontrol, Show, NewP4_MBCtrl
	guicontrol, Show, NewP4_MBAlt
	guicontrol, Show, NewP4_MBShift
	guicontrol, Show, NewP4_MBDrag
	}
If NewP4_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP4_OverrideText
	guicontrol, Hide, NewP4_OverrideLabel
	guicontrol, Hide, NewP4_SendKeystroke
	guicontrol, Hide, NewP4_SendKeystrokeText
	guicontrol, Hide, NewP4_ExeFilePathButton
	guicontrol, Hide, NewP4_ExeFilePath
	guicontrol, Hide, NewP4_MBCtrl
	guicontrol, Hide, NewP4_MBAlt
	guicontrol, Hide, NewP4_MBShift
	guicontrol, Hide, NewP4_MBDrag
	}
FileReadLine, isotextNewP4_Label,%A_ScriptDir%\Resources\Functions.txt, NewP4_Label
isotextNewP4_Label := StrSplit(isotextNewP4_Label, ":")
guicontrol, , txtNewP4_Label, % isotextNewP4_Label[2]
Return

P5_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP5_ExeFilePath, %A_ScriptDir%, %NewP5_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP5_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP5_ExeFilePath := SubStr(NewP5_ExeFilePath, ExeFilePathTrim)
	NewP5_ExeFilePath := "%A_WorkingDir%\Resources\"NewP5_ExeFilePath
	}
guicontrol, , NewP5_ExeFilePath, %NewP5_ExeFilePath%
RefNewP5_Label:
Gui, Submit, NoHide
If NewP5_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP5_OverrideText
	guicontrol, Show, NewP5_OverrideLabel
	guicontrol, Show, NewP5_ExeFilePathButton
	guicontrol, Show, NewP5_ExeFilePath
	guicontrol, Hide, NewP5_SendKeystroke
	guicontrol, Hide, NewP5_SendKeystrokeText
	guicontrol, Hide, NewP5_MBCtrl
	guicontrol, Hide, NewP5_MBAlt
	guicontrol, Hide, NewP5_MBShift
	guicontrol, Hide, NewP5_MBDrag
	}
If NewP5_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP5_OverrideText
	guicontrol, Show, NewP5_OverrideLabel
	guicontrol, Show, NewP5_SendKeystroke
	guicontrol, Show, NewP5_SendKeystrokeText
	guicontrol, Hide, NewP5_ExeFilePathButton
	guicontrol, Hide, NewP5_ExeFilePath
	guicontrol, Hide, NewP5_MBCtrl
	guicontrol, Hide, NewP5_MBAlt
	guicontrol, Hide, NewP5_MBShift
	guicontrol, Hide, NewP5_MBDrag
	}
If NewP5_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP5_OverrideText
	guicontrol, Show, NewP5_OverrideLabel
	guicontrol, Hide, NewP5_SendKeystroke
	guicontrol, Hide, NewP5_SendKeystrokeText
	guicontrol, Hide, NewP5_ExeFilePathButton
	guicontrol, Hide, NewP5_ExeFilePath
	guicontrol, Show, NewP5_MBCtrl
	guicontrol, Show, NewP5_MBAlt
	guicontrol, Show, NewP5_MBShift
	guicontrol, Show, NewP5_MBDrag
	}
If NewP5_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP5_OverrideText
	guicontrol, Hide, NewP5_OverrideLabel
	guicontrol, Hide, NewP5_SendKeystroke
	guicontrol, Hide, NewP5_SendKeystrokeText
	guicontrol, Hide, NewP5_ExeFilePathButton
	guicontrol, Hide, NewP5_ExeFilePath
	guicontrol, Hide, NewP5_MBCtrl
	guicontrol, Hide, NewP5_MBAlt
	guicontrol, Hide, NewP5_MBShift
	guicontrol, Hide, NewP5_MBDrag
	}
FileReadLine, isotextNewP5_Label,%A_ScriptDir%\Resources\Functions.txt, NewP5_Label
isotextNewP5_Label := StrSplit(isotextNewP5_Label, ":")
guicontrol, , txtNewP5_Label, % isotextNewP5_Label[2]
Return

P6_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewP6_ExeFilePath, %A_ScriptDir%, %NewP6_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewP6_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewP6_ExeFilePath := SubStr(NewP6_ExeFilePath, ExeFilePathTrim)
	NewP6_ExeFilePath := "%A_WorkingDir%\Resources\"NewP6_ExeFilePath
	}
guicontrol, , NewP6_ExeFilePath, %NewP6_ExeFilePath%
RefNewP6_Label:
Gui, Submit, NoHide
If NewP6_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewP6_OverrideText
	guicontrol, Show, NewP6_OverrideLabel
	guicontrol, Show, NewP6_ExeFilePathButton
	guicontrol, Show, NewP6_ExeFilePath
	guicontrol, Hide, NewP6_SendKeystroke
	guicontrol, Hide, NewP6_SendKeystrokeText
	guicontrol, Hide, NewP6_MBCtrl
	guicontrol, Hide, NewP6_MBAlt
	guicontrol, Hide, NewP6_MBShift
	guicontrol, Hide, NewP6_MBDrag
	}
If NewP6_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewP6_OverrideText
	guicontrol, Show, NewP6_OverrideLabel
	guicontrol, Show, NewP6_SendKeystroke
	guicontrol, Show, NewP6_SendKeystrokeText
	guicontrol, Hide, NewP6_ExeFilePathButton
	guicontrol, Hide, NewP6_ExeFilePath
	guicontrol, Hide, NewP6_MBCtrl
	guicontrol, Hide, NewP6_MBAlt
	guicontrol, Hide, NewP6_MBShift
	guicontrol, Hide, NewP6_MBDrag
	}
If NewP6_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewP6_OverrideText
	guicontrol, Show, NewP6_OverrideLabel
	guicontrol, Hide, NewP6_SendKeystroke
	guicontrol, Hide, NewP6_SendKeystrokeText
	guicontrol, Hide, NewP6_ExeFilePathButton
	guicontrol, Hide, NewP6_ExeFilePath
	guicontrol, Show, NewP6_MBCtrl
	guicontrol, Show, NewP6_MBAlt
	guicontrol, Show, NewP6_MBShift
	guicontrol, Show, NewP6_MBDrag
	}
If NewP6_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewP6_OverrideText
	guicontrol, Hide, NewP6_OverrideLabel
	guicontrol, Hide, NewP6_SendKeystroke
	guicontrol, Hide, NewP6_SendKeystrokeText
	guicontrol, Hide, NewP6_ExeFilePathButton
	guicontrol, Hide, NewP6_ExeFilePath
	guicontrol, Hide, NewP6_MBCtrl
	guicontrol, Hide, NewP6_MBAlt
	guicontrol, Hide, NewP6_MBShift
	guicontrol, Hide, NewP6_MBDrag
	}
FileReadLine, isotextNewP6_Label,%A_ScriptDir%\Resources\Functions.txt, NewP6_Label
isotextNewP6_Label := StrSplit(isotextNewP6_Label, ":")
guicontrol, , txtNewP6_Label, % isotextNewP6_Label[2]
Return

Rnull_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewRnull_ExeFilePath, %A_ScriptDir%, %NewRnull_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewRnull_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewRnull_ExeFilePath := SubStr(NewRnull_ExeFilePath, ExeFilePathTrim)
	NewRnull_ExeFilePath := "%A_WorkingDir%\Resources\"NewRnull_ExeFilePath
	}
guicontrol, , NewRnull_ExeFilePath, %NewRnull_ExeFilePath%
RefNewRnull_Label:
Gui, Submit, NoHide
If NewRnull_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewRnull_OverrideText
	guicontrol, Show, NewRnull_OverrideLabel
	guicontrol, Show, NewRnull_ExeFilePathButton
	guicontrol, Show, NewRnull_ExeFilePath
	guicontrol, Hide, NewRnull_SendKeystroke
	guicontrol, Hide, NewRnull_SendKeystrokeText
	guicontrol, Hide, NewRnull_MBCtrl
	guicontrol, Hide, NewRnull_MBAlt
	guicontrol, Hide, NewRnull_MBShift
	guicontrol, Hide, NewRnull_MBDrag
	}
If NewRnull_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewRnull_OverrideText
	guicontrol, Show, NewRnull_OverrideLabel
	guicontrol, Show, NewRnull_SendKeystroke
	guicontrol, Show, NewRnull_SendKeystrokeText
	guicontrol, Hide, NewRnull_ExeFilePathButton
	guicontrol, Hide, NewRnull_ExeFilePath
	guicontrol, Hide, NewRnull_MBCtrl
	guicontrol, Hide, NewRnull_MBAlt
	guicontrol, Hide, NewRnull_MBShift
	guicontrol, Hide, NewRnull_MBDrag
	}
If NewRnull_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewRnull_OverrideText
	guicontrol, Show, NewRnull_OverrideLabel
	guicontrol, Hide, NewRnull_SendKeystroke
	guicontrol, Hide, NewRnull_SendKeystrokeText
	guicontrol, Hide, NewRnull_ExeFilePathButton
	guicontrol, Hide, NewRnull_ExeFilePath
	guicontrol, Show, NewRnull_MBCtrl
	guicontrol, Show, NewRnull_MBAlt
	guicontrol, Show, NewRnull_MBShift
	guicontrol, Show, NewRnull_MBDrag
	}
If NewRnull_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewRnull_OverrideText
	guicontrol, Hide, NewRnull_OverrideLabel
	guicontrol, Hide, NewRnull_SendKeystroke
	guicontrol, Hide, NewRnull_SendKeystrokeText
	guicontrol, Hide, NewRnull_ExeFilePathButton
	guicontrol, Hide, NewRnull_ExeFilePath
	guicontrol, Hide, NewRnull_MBCtrl
	guicontrol, Hide, NewRnull_MBAlt
	guicontrol, Hide, NewRnull_MBShift
	guicontrol, Hide, NewRnull_MBDrag
	}
FileReadLine, isotextNewRnull_Label,%A_ScriptDir%\Resources\Functions.txt, NewRnull_Label
isotextNewRnull_Label := StrSplit(isotextNewRnull_Label, ":")
guicontrol, , txtNewRnull_Label, % isotextNewRnull_Label[2]
Return



R1_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR1_ExeFilePath, %A_ScriptDir%, %NewR1_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR1_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR1_ExeFilePath := SubStr(NewR1_ExeFilePath, ExeFilePathTrim)
	NewR1_ExeFilePath := "%A_WorkingDir%\Resources\"NewR1_ExeFilePath
	}
guicontrol, , NewR1_ExeFilePath, %NewR1_ExeFilePath%
RefNewR1_Label:
Gui, Submit, NoHide
If NewR1_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR1_OverrideText
	guicontrol, Show, NewR1_OverrideLabel
	guicontrol, Show, NewR1_ExeFilePathButton
	guicontrol, Show, NewR1_ExeFilePath
	guicontrol, Hide, NewR1_SendKeystroke
	guicontrol, Hide, NewR1_SendKeystrokeText
	guicontrol, Hide, NewR1_MBCtrl
	guicontrol, Hide, NewR1_MBAlt
	guicontrol, Hide, NewR1_MBShift
	guicontrol, Hide, NewR1_MBDrag
	}
If NewR1_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR1_OverrideText
	guicontrol, Show, NewR1_OverrideLabel
	guicontrol, Show, NewR1_SendKeystroke
	guicontrol, Show, NewR1_SendKeystrokeText
	guicontrol, Hide, NewR1_ExeFilePathButton
	guicontrol, Hide, NewR1_ExeFilePath
	guicontrol, Hide, NewR1_MBCtrl
	guicontrol, Hide, NewR1_MBAlt
	guicontrol, Hide, NewR1_MBShift
	guicontrol, Hide, NewR1_MBDrag
	}
If NewR1_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR1_OverrideText
	guicontrol, Show, NewR1_OverrideLabel
	guicontrol, Hide, NewR1_SendKeystroke
	guicontrol, Hide, NewR1_SendKeystrokeText
	guicontrol, Hide, NewR1_ExeFilePathButton
	guicontrol, Hide, NewR1_ExeFilePath
	guicontrol, Show, NewR1_MBCtrl
	guicontrol, Show, NewR1_MBAlt
	guicontrol, Show, NewR1_MBShift
	guicontrol, Show, NewR1_MBDrag
	}
If NewR1_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR1_OverrideText
	guicontrol, Hide, NewR1_OverrideLabel
	guicontrol, Hide, NewR1_SendKeystroke
	guicontrol, Hide, NewR1_SendKeystrokeText
	guicontrol, Hide, NewR1_ExeFilePathButton
	guicontrol, Hide, NewR1_ExeFilePath
	guicontrol, Hide, NewR1_MBCtrl
	guicontrol, Hide, NewR1_MBAlt
	guicontrol, Hide, NewR1_MBShift
	guicontrol, Hide, NewR1_MBDrag
	}
FileReadLine, isotextNewR1_Label,%A_ScriptDir%\Resources\Functions.txt, NewR1_Label
isotextNewR1_Label := StrSplit(isotextNewR1_Label, ":")
guicontrol, , txtNewR1_Label, % isotextNewR1_Label[2]
Return

R2_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR2_ExeFilePath, %A_ScriptDir%, %NewR2_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR2_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR2_ExeFilePath := SubStr(NewR2_ExeFilePath, ExeFilePathTrim)
	NewR2_ExeFilePath := "%A_WorkingDir%\Resources\"NewR2_ExeFilePath
	}
guicontrol, , NewR2_ExeFilePath, %NewR2_ExeFilePath%
RefNewR2_Label:
Gui, Submit, NoHide
If NewR2_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR2_OverrideText
	guicontrol, Show, NewR2_OverrideLabel
	guicontrol, Show, NewR2_ExeFilePathButton
	guicontrol, Show, NewR2_ExeFilePath
	guicontrol, Hide, NewR2_SendKeystroke
	guicontrol, Hide, NewR2_SendKeystrokeText
	guicontrol, Hide, NewR2_MBCtrl
	guicontrol, Hide, NewR2_MBAlt
	guicontrol, Hide, NewR2_MBShift
	guicontrol, Hide, NewR2_MBDrag
	}
If NewR2_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR2_OverrideText
	guicontrol, Show, NewR2_OverrideLabel
	guicontrol, Show, NewR2_SendKeystroke
	guicontrol, Show, NewR2_SendKeystrokeText
	guicontrol, Hide, NewR2_ExeFilePathButton
	guicontrol, Hide, NewR2_ExeFilePath
	guicontrol, Hide, NewR2_MBCtrl
	guicontrol, Hide, NewR2_MBAlt
	guicontrol, Hide, NewR2_MBShift
	guicontrol, Hide, NewR2_MBDrag
	}
If NewR2_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR2_OverrideText
	guicontrol, Show, NewR2_OverrideLabel
	guicontrol, Hide, NewR2_SendKeystroke
	guicontrol, Hide, NewR2_SendKeystrokeText
	guicontrol, Hide, NewR2_ExeFilePathButton
	guicontrol, Hide, NewR2_ExeFilePath
	guicontrol, Show, NewR2_MBCtrl
	guicontrol, Show, NewR2_MBAlt
	guicontrol, Show, NewR2_MBShift
	guicontrol, Show, NewR2_MBDrag
	}
If NewR2_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR2_OverrideText
	guicontrol, Hide, NewR2_OverrideLabel
	guicontrol, Hide, NewR2_SendKeystroke
	guicontrol, Hide, NewR2_SendKeystrokeText
	guicontrol, Hide, NewR2_ExeFilePathButton
	guicontrol, Hide, NewR2_ExeFilePath
	guicontrol, Hide, NewR2_MBCtrl
	guicontrol, Hide, NewR2_MBAlt
	guicontrol, Hide, NewR2_MBShift
	guicontrol, Hide, NewR2_MBDrag
	}
FileReadLine, isotextNewR2_Label,%A_ScriptDir%\Resources\Functions.txt, NewR2_Label
isotextNewR2_Label := StrSplit(isotextNewR2_Label, ":")
guicontrol, , txtNewR2_Label, % isotextNewR2_Label[2]
Return

R3_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR3_ExeFilePath, %A_ScriptDir%, %NewR3_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR3_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR3_ExeFilePath := SubStr(NewR3_ExeFilePath, ExeFilePathTrim)
	NewR3_ExeFilePath := "%A_WorkingDir%\Resources\"NewR3_ExeFilePath
	}
guicontrol, , NewR3_ExeFilePath, %NewR3_ExeFilePath%
RefNewR3_Label:
Gui, Submit, NoHide
If NewR3_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR3_OverrideText
	guicontrol, Show, NewR3_OverrideLabel
	guicontrol, Show, NewR3_ExeFilePathButton
	guicontrol, Show, NewR3_ExeFilePath
	guicontrol, Hide, NewR3_SendKeystroke
	guicontrol, Hide, NewR3_SendKeystrokeText
	guicontrol, Hide, NewR3_MBCtrl
	guicontrol, Hide, NewR3_MBAlt
	guicontrol, Hide, NewR3_MBShift
	guicontrol, Hide, NewR3_MBDrag
	}
If NewR3_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR3_OverrideText
	guicontrol, Show, NewR3_OverrideLabel
	guicontrol, Show, NewR3_SendKeystroke
	guicontrol, Show, NewR3_SendKeystrokeText
	guicontrol, Hide, NewR3_ExeFilePathButton
	guicontrol, Hide, NewR3_ExeFilePath
	guicontrol, Hide, NewR3_MBCtrl
	guicontrol, Hide, NewR3_MBAlt
	guicontrol, Hide, NewR3_MBShift
	guicontrol, Hide, NewR3_MBDrag
	}
If NewR3_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR3_OverrideText
	guicontrol, Show, NewR3_OverrideLabel
	guicontrol, Hide, NewR3_SendKeystroke
	guicontrol, Hide, NewR3_SendKeystrokeText
	guicontrol, Hide, NewR3_ExeFilePathButton
	guicontrol, Hide, NewR3_ExeFilePath
	guicontrol, Show, NewR3_MBCtrl
	guicontrol, Show, NewR3_MBAlt
	guicontrol, Show, NewR3_MBShift
	guicontrol, Show, NewR3_MBDrag
	}
If NewR3_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR3_OverrideText
	guicontrol, Hide, NewR3_OverrideLabel
	guicontrol, Hide, NewR3_SendKeystroke
	guicontrol, Hide, NewR3_SendKeystrokeText
	guicontrol, Hide, NewR3_ExeFilePathButton
	guicontrol, Hide, NewR3_ExeFilePath
	guicontrol, Hide, NewR3_MBCtrl
	guicontrol, Hide, NewR3_MBAlt
	guicontrol, Hide, NewR3_MBShift
	guicontrol, Hide, NewR3_MBDrag
	}
FileReadLine, isotextNewR3_Label,%A_ScriptDir%\Resources\Functions.txt, NewR3_Label
isotextNewR3_Label := StrSplit(isotextNewR3_Label, ":")
guicontrol, , txtNewR3_Label, % isotextNewR3_Label[2]
Return


R4_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR4_ExeFilePath, %A_ScriptDir%, %NewR4_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR4_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR4_ExeFilePath := SubStr(NewR4_ExeFilePath, ExeFilePathTrim)
	NewR4_ExeFilePath := "%A_WorkingDir%\Resources\"NewR4_ExeFilePath
	}
guicontrol, , NewR4_ExeFilePath, %NewR4_ExeFilePath%
RefNewR4_Label:
Gui, Submit, NoHide
If NewR4_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR4_OverrideText
	guicontrol, Show, NewR4_OverrideLabel
	guicontrol, Show, NewR4_ExeFilePathButton
	guicontrol, Show, NewR4_ExeFilePath
	guicontrol, Hide, NewR4_SendKeystroke
	guicontrol, Hide, NewR4_SendKeystrokeText
	guicontrol, Hide, NewR4_MBCtrl
	guicontrol, Hide, NewR4_MBAlt
	guicontrol, Hide, NewR4_MBShift
	guicontrol, Hide, NewR4_MBDrag
	}
If NewR4_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR4_OverrideText
	guicontrol, Show, NewR4_OverrideLabel
	guicontrol, Show, NewR4_SendKeystroke
	guicontrol, Show, NewR4_SendKeystrokeText
	guicontrol, Hide, NewR4_ExeFilePathButton
	guicontrol, Hide, NewR4_ExeFilePath
	guicontrol, Hide, NewR4_MBCtrl
	guicontrol, Hide, NewR4_MBAlt
	guicontrol, Hide, NewR4_MBShift
	guicontrol, Hide, NewR4_MBDrag
	}
If NewR4_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR4_OverrideText
	guicontrol, Show, NewR4_OverrideLabel
	guicontrol, Hide, NewR4_SendKeystroke
	guicontrol, Hide, NewR4_SendKeystrokeText
	guicontrol, Hide, NewR4_ExeFilePathButton
	guicontrol, Hide, NewR4_ExeFilePath
	guicontrol, Show, NewR4_MBCtrl
	guicontrol, Show, NewR4_MBAlt
	guicontrol, Show, NewR4_MBShift
	guicontrol, Show, NewR4_MBDrag
	}
If NewR4_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR4_OverrideText
	guicontrol, Hide, NewR4_OverrideLabel
	guicontrol, Hide, NewR4_SendKeystroke
	guicontrol, Hide, NewR4_SendKeystrokeText
	guicontrol, Hide, NewR4_ExeFilePathButton
	guicontrol, Hide, NewR4_ExeFilePath
	guicontrol, Hide, NewR4_MBCtrl
	guicontrol, Hide, NewR4_MBAlt
	guicontrol, Hide, NewR4_MBShift
	guicontrol, Hide, NewR4_MBDrag
	}
FileReadLine, isotextNewR4_Label,%A_ScriptDir%\Resources\Functions.txt, NewR4_Label
isotextNewR4_Label := StrSplit(isotextNewR4_Label, ":")
guicontrol, , txtNewR4_Label, % isotextNewR4_Label[2]
Return

R5_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR5_ExeFilePath, %A_ScriptDir%, %NewR5_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR5_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR5_ExeFilePath := SubStr(NewR5_ExeFilePath, ExeFilePathTrim)
	NewR5_ExeFilePath := "%A_WorkingDir%\Resources\"NewR5_ExeFilePath
	}
guicontrol, , NewR5_ExeFilePath, %NewR5_ExeFilePath%
RefNewR5_Label:
Gui, Submit, NoHide
If NewR5_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR5_OverrideText
	guicontrol, Show, NewR5_OverrideLabel
	guicontrol, Show, NewR5_ExeFilePathButton
	guicontrol, Show, NewR5_ExeFilePath
	guicontrol, Hide, NewR5_SendKeystroke
	guicontrol, Hide, NewR5_SendKeystrokeText
	guicontrol, Hide, NewR5_MBCtrl
	guicontrol, Hide, NewR5_MBAlt
	guicontrol, Hide, NewR5_MBShift
	guicontrol, Hide, NewR5_MBDrag
	}
If NewR5_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR5_OverrideText
	guicontrol, Show, NewR5_OverrideLabel
	guicontrol, Show, NewR5_SendKeystroke
	guicontrol, Show, NewR5_SendKeystrokeText
	guicontrol, Hide, NewR5_ExeFilePathButton
	guicontrol, Hide, NewR5_ExeFilePath
	guicontrol, Hide, NewR5_MBCtrl
	guicontrol, Hide, NewR5_MBAlt
	guicontrol, Hide, NewR5_MBShift
	guicontrol, Hide, NewR5_MBDrag
	}
If NewR5_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR5_OverrideText
	guicontrol, Show, NewR5_OverrideLabel
	guicontrol, Hide, NewR5_SendKeystroke
	guicontrol, Hide, NewR5_SendKeystrokeText
	guicontrol, Hide, NewR5_ExeFilePathButton
	guicontrol, Hide, NewR5_ExeFilePath
	guicontrol, Show, NewR5_MBCtrl
	guicontrol, Show, NewR5_MBAlt
	guicontrol, Show, NewR5_MBShift
	guicontrol, Show, NewR5_MBDrag
	}
If NewR5_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR5_OverrideText
	guicontrol, Hide, NewR5_OverrideLabel
	guicontrol, Hide, NewR5_SendKeystroke
	guicontrol, Hide, NewR5_SendKeystrokeText
	guicontrol, Hide, NewR5_ExeFilePathButton
	guicontrol, Hide, NewR5_ExeFilePath
	guicontrol, Hide, NewR5_MBCtrl
	guicontrol, Hide, NewR5_MBAlt
	guicontrol, Hide, NewR5_MBShift
	guicontrol, Hide, NewR5_MBDrag
	}
FileReadLine, isotextNewR5_Label,%A_ScriptDir%\Resources\Functions.txt, NewR5_Label
isotextNewR5_Label := StrSplit(isotextNewR5_Label, ":")
guicontrol, , txtNewR5_Label, % isotextNewR5_Label[2]
Return

R6_SelectFile:
Gui, Submit, NoHide
FileSelectFile, NewR6_ExeFilePath, %A_ScriptDir%, %NewR6_ExeFilePathButton%
ExeFilePathTrim := ""
ExeFilePathTrim := RegExMatch(NewR6_ExeFilePath, "Local Pie Scripts")
If (ExeFilePathTrim > 1)
	{
	NewR6_ExeFilePath := SubStr(NewR6_ExeFilePath, ExeFilePathTrim)
	NewR6_ExeFilePath := "%A_WorkingDir%\Resources\"NewR6_ExeFilePath
	}
guicontrol, , NewR6_ExeFilePath, %NewR6_ExeFilePath%
RefNewR6_Label:
Gui, Submit, NoHide
If NewR6_Label = 3  ;Run Program Function
	{
	guicontrol, Show, NewR6_OverrideText
	guicontrol, Show, NewR6_OverrideLabel
	guicontrol, Show, NewR6_ExeFilePathButton
	guicontrol, Show, NewR6_ExeFilePath
	guicontrol, Hide, NewR6_SendKeystroke
	guicontrol, Hide, NewR6_SendKeystrokeText
	guicontrol, Hide, NewR6_MBCtrl
	guicontrol, Hide, NewR6_MBAlt
	guicontrol, Hide, NewR6_MBShift
	guicontrol, Hide, NewR6_MBDrag
	}
If NewR6_Label = 2  ;SendKey Function
	{
	guicontrol, Show, NewR6_OverrideText
	guicontrol, Show, NewR6_OverrideLabel
	guicontrol, Show, NewR6_SendKeystroke
	guicontrol, Show, NewR6_SendKeystrokeText
	guicontrol, Hide, NewR6_ExeFilePathButton
	guicontrol, Hide, NewR6_ExeFilePath
	guicontrol, Hide, NewR6_MBCtrl
	guicontrol, Hide, NewR6_MBAlt
	guicontrol, Hide, NewR6_MBShift
	guicontrol, Hide, NewR6_MBDrag
	}
If NewR6_Label between 4 and 6  ;Any of the Mouse Click Functions
	{
	guicontrol, Show, NewR6_OverrideText
	guicontrol, Show, NewR6_OverrideLabel
	guicontrol, Hide, NewR6_SendKeystroke
	guicontrol, Hide, NewR6_SendKeystrokeText
	guicontrol, Hide, NewR6_ExeFilePathButton
	guicontrol, Hide, NewR6_ExeFilePath
	guicontrol, Show, NewR6_MBCtrl
	guicontrol, Show, NewR6_MBAlt
	guicontrol, Show, NewR6_MBShift
	guicontrol, Show, NewR6_MBDrag
	}
If NewR6_Label not between 2 and 6 ;Not any of my coolest function are selected.
	{
	guicontrol, Hide, NewR6_OverrideText
	guicontrol, Hide, NewR6_OverrideLabel
	guicontrol, Hide, NewR6_SendKeystroke
	guicontrol, Hide, NewR6_SendKeystrokeText
	guicontrol, Hide, NewR6_ExeFilePathButton
	guicontrol, Hide, NewR6_ExeFilePath
	guicontrol, Hide, NewR6_MBCtrl
	guicontrol, Hide, NewR6_MBAlt
	guicontrol, Hide, NewR6_MBShift
	guicontrol, Hide, NewR6_MBDrag
	}
FileReadLine, isotextNewR6_Label,%A_ScriptDir%\Resources\Functions.txt, NewR6_Label
isotextNewR6_Label := StrSplit(isotextNewR6_Label, ":")
guicontrol, , txtNewR6_Label, % isotextNewR6_Label[2]
Return






PieNumber:
Gui, Submit, NoHide
If 1NewPieNumberSetting = 1
	NewPieNumberSetting := 1
If 2NewPieNumberSetting = 1
	NewPieNumberSetting := 2
If 3NewPieNumberSetting = 1
	NewPieNumberSetting := 3
; Msgbox, %NewPieNumberSetting%
Return

PieMethod:
Gui, Submit, NoHide
If 1NewShiftPieMethod = 1
	NewShiftPieMethod := 1
If 2NewShiftPieMethod = 1
	NewShiftPieMethod := 2
If 3NewShiftPieMethod = 1
	NewShiftPieMethod := 3
If 4NewShiftPieMethod = 1
	NewShiftPieMethod := 4
; Msgbox, %NewShiftPieMethod%
Return

OK:
Gui, Submit, Nohide
FileDelete, %A_ScriptDir%\Resources\settingsfile.txt
If 1NewPieNumberSetting = 1
	NewPieNumberSetting := 1
If 2NewPieNumberSetting = 1
	NewPieNumberSetting := 2
If 3NewPieNumberSetting = 1
	NewPieNumberSetting := 3
If 1NewShiftPieMethod = 1
	NewShiftPieMethod := 1
If 2NewShiftPieMethod = 1
	NewShiftPieMethod := 2
If 3NewShiftPieMethod = 1
	NewShiftPieMethod := 3
If 4NewShiftPieMethod = 1
	NewShiftPieMethod := 4

NewBnull_ClickModifiers = %NewBnull_MBCtrl%%NewBnull_MBShift%%NewBnull_MBAlt%%NewBnull_MBDrag%
NewB1_ClickModifiers = %NewB1_MBCtrl%%NewB1_MBShift%%NewB1_MBAlt%%NewB1_MBDrag%
NewB2_ClickModifiers = %NewB2_MBCtrl%%NewB2_MBShift%%NewB2_MBAlt%%NewB2_MBDrag%
NewB3_ClickModifiers = %NewB3_MBCtrl%%NewB3_MBShift%%NewB3_MBAlt%%NewB3_MBDrag%
NewB4_ClickModifiers = %NewB4_MBCtrl%%NewB4_MBShift%%NewB4_MBAlt%%NewB4_MBDrag%
NewB5_ClickModifiers = %NewB5_MBCtrl%%NewB5_MBShift%%NewB5_MBAlt%%NewB5_MBDrag%
NewB6_ClickModifiers = %NewB6_MBCtrl%%NewB6_MBShift%%NewB6_MBAlt%%NewB6_MBDrag%
NewPnull_ClickModifiers = %NewPnull_MBCtrl%%NewPnull_MBShift%%NewPnull_MBAlt%
NewP1_ClickModifiers = %NewP1_MBCtrl%%NewP1_MBShift%%NewP1_MBAlt%%NewP1_MBDrag%
NewP2_ClickModifiers = %NewP2_MBCtrl%%NewP2_MBShift%%NewP2_MBAlt%%NewP2_MBDrag%
NewP3_ClickModifiers = %NewP3_MBCtrl%%NewP3_MBShift%%NewP3_MBAlt%%NewP3_MBDrag%
NewP4_ClickModifiers = %NewP4_MBCtrl%%NewP4_MBShift%%NewP4_MBAlt%%NewP4_MBDrag%
NewP5_ClickModifiers = %NewP5_MBCtrl%%NewP5_MBShift%%NewP5_MBAlt%%NewP5_MBDrag%
NewP6_ClickModifiers = %NewP6_MBCtrl%%NewP6_MBShift%%NewP6_MBAlt%%NewP6_MBDrag%
NewRnull_ClickModifiers = %NewRnull_MBCtrl%%NewRnull_MBShift%%NewRnull_MBAlt%
NewR1_ClickModifiers = %NewR1_MBCtrl%%NewR1_MBShift%%NewR1_MBAlt%%NewR1_MBDrag%
NewR2_ClickModifiers = %NewR2_MBCtrl%%NewR2_MBShift%%NewR2_MBAlt%%NewR2_MBDrag%
NewR3_ClickModifiers = %NewR3_MBCtrl%%NewR3_MBShift%%NewR3_MBAlt%%NewR3_MBDrag%
NewR4_ClickModifiers = %NewR4_MBCtrl%%NewR4_MBShift%%NewR4_MBAlt%%NewR4_MBDrag%
NewR5_ClickModifiers = %NewR5_MBCtrl%%NewR5_MBShift%%NewR5_MBAlt%%NewR5_MBDrag%
NewR6_ClickModifiers = %NewR6_MBCtrl%%NewR6_MBShift%%NewR6_MBAlt%%NewR6_MBDrag%





	
sleep, 10
FileAppend,
(
%NewPieActivateKeySetting%
%NewPieLabelDelaySetting%
%NewPieNumberSetting%
%NewShiftPieMethod% 
%NewDisplayTooltipsSetting%

%NewPenTabletActive%
%NewBnull_Label%
%NewBnull_OverrideLabel%
%NewBnull_SendKeystroke%
%NewB1_Label%
%NewB1_OverrideLabel%
%NewB1_SendKeystroke%
%NewB2_Label%
%NewB2_OverrideLabel%
%NewB2_SendKeystroke%
%NewB3_Label%
%NewB3_OverrideLabel%
%NewB3_SendKeystroke%
%NewB4_Label%
%NewB4_OverrideLabel%
%NewB4_SendKeystroke%
%NewB5_Label%
%NewB5_OverrideLabel%
%NewB5_SendKeystroke%
%NewB6_Label%
%NewB6_OverrideLabel%
%NewB6_SendKeystroke%
%NewPnull_Label%
%NewPnull_OverrideLabel%
%NewPnull_SendKeystroke%
%NewP1_Label%
%NewP1_OverrideLabel%
%NewP1_SendKeystroke%
%NewP2_Label%
%NewP2_OverrideLabel%
%NewP2_SendKeystroke%
%NewP3_Label%
%NewP3_OverrideLabel%
%NewP3_SendKeystroke%
%NewP4_Label%
%NewP4_OverrideLabel%
%NewP4_SendKeystroke%
%NewP5_Label%
%NewP5_OverrideLabel%
%NewP5_SendKeystroke%
%NewP6_Label%
%NewP6_OverrideLabel%
%NewP6_SendKeystroke%
%NewRnull_Label%
%NewRnull_OverrideLabel%
%NewRnull_SendKeystroke%
%NewR1_Label%
%NewR1_OverrideLabel%
%NewR1_SendKeystroke%
%NewR2_Label%
%NewR2_OverrideLabel%
%NewR2_SendKeystroke%
%NewR3_Label%
%NewR3_OverrideLabel%
%NewR3_SendKeystroke%
%NewR4_Label%
%NewR4_OverrideLabel%
%NewR4_SendKeystroke%
%NewR5_Label%
%NewR5_OverrideLabel%
%NewR5_SendKeystroke%
%NewR6_Label%
%NewR6_OverrideLabel%
%NewR6_SendKeystroke%
%NewBnull_ExeFilePath%
%NewB1_ExeFilePath%
%NewB2_ExeFilePath%
%NewB3_ExeFilePath%
%NewB4_ExeFilePath%
%NewB5_ExeFilePath%
%NewB6_ExeFilePath%
%NewPnull_ExeFilePath%
%NewP1_ExeFilePath%
%NewP2_ExeFilePath%
%NewP3_ExeFilePath%
%NewP4_ExeFilePath%
%NewP5_ExeFilePath%
%NewP6_ExeFilePath%
%NewRnull_ExeFilePath%
%NewR1_ExeFilePath%
%NewR2_ExeFilePath%
%NewR3_ExeFilePath%
%NewR4_ExeFilePath%
%NewR5_ExeFilePath%
%NewR6_ExeFilePath%
%NewPieMenuSize%
%NewBnull_ClickModifiers%
%NewB1_ClickModifiers%
%NewB2_ClickModifiers%
%NewB3_ClickModifiers%
%NewB4_ClickModifiers%
%NewB5_ClickModifiers%
%NewB6_ClickModifiers%
%NewPnull_ClickModifiers%
%NewP1_ClickModifiers%
%NewP2_ClickModifiers%
%NewP3_ClickModifiers%
%NewP4_ClickModifiers%
%NewP5_ClickModifiers%
%NewP6_ClickModifiers%
%NewRnull_ClickModifiers%
%NewR1_ClickModifiers%
%NewR2_ClickModifiers%
%NewR3_ClickModifiers%
%NewR4_ClickModifiers%
%NewR5_ClickModifiers%
%NewR6_ClickModifiers%
), %A_ScriptDir%\Resources\settingsfile.txt
sleep, 60
If 1 = Restart
Run "%A_ScriptDir%\PieMenu.ahk"
exitapp
Return

Cancel:
If 1 = Restart
Run "%A_ScriptDir%\PieMenu.ahk"
exitapp


PieMenuGuiClose:
If 1 = Restart
Run "%A_ScriptDir%\PieMenu.ahk"
ExitApp
; This Gui is generated by X-GUI Creator