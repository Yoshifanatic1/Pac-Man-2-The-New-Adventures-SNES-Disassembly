
!RAM_PM2_Global_UpdateEntirePaletteFlag = $7E0126

!RAM_PM2_Global_HeldButtonsLoP1 = $7E0180
!RAM_PM2_Global_HeldButtonsHiP1 = !RAM_PM2_Global_HeldButtonsLoP1+$01		; $7E0181
!RAM_PM2_Global_HeldButtonsLoP2 = !RAM_PM2_Global_HeldButtonsLoP1+$02		; $7E0182
!RAM_PM2_Global_HeldButtonsHiP2 = !RAM_PM2_Global_HeldButtonsLoP2+$01		; $7E0183
!RAM_PM2_Global_PressedButtonsLoP1 = $7E0184
!RAM_PM2_Global_PressedButtonsHiP1 = !RAM_PM2_Global_PressedButtonsLoP1+$01	; $7E0185
!RAM_PM2_Global_PressedButtonsLoP2 = !RAM_PM2_Global_PressedButtonsLoP1+$02	; $7E0186
!RAM_PM2_Global_PressedButtonsHiP2 = !RAM_PM2_Global_PressedButtonsLoP2+$01	; $7E0187

!RAM_PM2_Level_ReadyingSlingshotAnimationFrameIndex = $7E0496

!RAM_PM2_Level_CurrentLevelLo = $7E0500
!RAM_PM2_Level_CurrentLevelHi = !RAM_PM2_Level_CurrentLevelLo+$01		; $7E0501
!RAM_PM2_Level_CurrentAreaLo = $7E0502
!RAM_PM2_Level_CurrentAreaHi = !RAM_PM2_Level_CurrentAreaLo+$01			; $7E0503
!RAM_PM2_Level_AreaEntranceIDLo = $7E0504
!RAM_PM2_Level_AreaEntranceIDHi = !RAM_PM2_Level_AreaEntranceIDLo+$01		; $7E0505
!RAM_PM2_Level_PowerPelletCount = $7E0506
!RAM_PM2_Level_CollectedCartridges = !RAM_PM2_Level_PowerPelletCount+$01	; $7E0507
!RAM_PM2_Level_CollectedIDCards = !RAM_PM2_Level_PowerPelletCount+$02		; $7E0508
!RAM_PM2_Level_LevelObjectiveCompleteFlag = !RAM_PM2_Level_PowerPelletCount+$03	; $7E0509

; $7E0804 = Something related to whether Pac-Man or Ms. Pac Man is being played.

!RAM_PM2_Arcade_HeldButtonsLoP1 = $7E08A0
!RAM_PM2_Arcade_HeldButtonsHiP1 = !RAM_PM2_Arcade_HeldButtonsLoP1+$01
!RAM_PM2_Arcade_HeldButtonsLoP2 = !RAM_PM2_Arcade_HeldButtonsLoP1+$02		; $7E08A2
!RAM_PM2_Arcade_HeldButtonsHiP2 = !RAM_PM2_Arcade_HeldButtonsLoP2+$01

; $7E0942 = Something related to whether Pac-Man or Ms. Pac Man is being played.

!RAM_PM2_Password_CursorXPosIndexLo = $7E09B0
!RAM_PM2_Password_CursorXPosIndexHi =  !RAM_PM2_Password_CursorXPosIndexLo+$01	; $7E09B1
!RAM_PM2_Password_CursorYPosIndexLo = $7E09B2
!RAM_PM2_Password_CursorYPosIndexHi =  !RAM_PM2_Password_CursorYPosIndexLo+$01	; $7E09B3
!RAM_PM2_Password_EnteredPasswordIndex = $7E09B4

!RAM_PM2_Password_EnteredPassword = $7E09B6

!RAM_PM2_NorSpr_MainRAMTable = $7E1000

!RAM_PM2_Level_CursorXPosLo = $7E1062
!RAM_PM2_Level_CursorXPosHi = !RAM_PM2_Level_CursorXPosLo+$01

!RAM_PM2_Level_CursorYPosLo = $7E1066
!RAM_PM2_Level_CursorYPosHi = !RAM_PM2_Level_CursorYPosLo+$01

!RAM_PM2_Level_WaitAfterShotTimerLo = $7E1078
!RAM_PM2_Level_WaitAfterShotTimerHi = !RAM_PM2_Level_WaitAfterShotTimerLo+$01

!RAM_PM2_Global_PaletteMirror = $7E2000

!RAM_PM2_Global_OAMBuffer = $7E2400

struct PM2_NorSpr_MainRAMTable !RAM_PM2_NorSpr_MainRAMTable
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	.AnimationFrameLo: skip $01
	.AnimationFrameHi: skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	skip $01
	.XPosLo: skip $01
	.XPosHi: skip $01
	skip $01
	skip $01
	.YPosLo: skip $01
	.YPosHi: skip $01
endstruct align $40

struct PM2_Global_EnteredPassword !RAM_PM2_Password_EnteredPassword
	.Slot: skip $02
endstruct

struct PM2_Global_PaletteMirror !RAM_PM2_Global_PaletteMirror
	.LowByte: skip $01
	.HighByte: skip $01
endstruct align $02

struct PM2_Global_OAMBuffer !RAM_PM2_Global_OAMBuffer
	.XDisp: skip $01
	.YDisp: skip $01
	.Tile: skip $01
	.Prop: skip $01
endstruct align $04

struct PM2_Global_UpperOAMBuffer !RAM_PM2_Global_OAMBuffer+$0200
	.Slot: skip $01
endstruct align $01
