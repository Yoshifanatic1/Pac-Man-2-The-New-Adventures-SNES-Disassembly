macro PM2_GameSpecificAssemblySettings()
	!ROM_PM2_U = $0001							;\ These defines assign each ROM version with a different bit so version difference checks will work. Do not touch them!
	!ROM_PM2_E = $0002							;|
	!ROM_PM2_J = $0004							;|
	!ROM_PM2_F = $0008							;|
	!ROM_PM2_G = $0010							;/

	%SetROMToAssembleForHack(PM2_U, !ROMID)
endmacro

macro PM2_LoadGameSpecificMainSNESFiles()
	incsrc ../Misc_Defines_PM2.asm
	incsrc ../RAM_Map_PM2.asm
	incsrc ../Routine_Macros_PM2.asm
	incsrc ../SNES_Macros_PM2.asm
endmacro

macro PM2_LoadGameSpecificMainSPC700Files()
	incsrc ../SPC700/ARAM_Map_PM2.asm
	incsrc ../Misc_Defines_PM2.asm
	incsrc ../SPC700/SPC700_Macros_PM2.asm
endmacro

macro PM2_LoadGameSpecificMainExtraHardwareFiles()
endmacro

macro PM2_LoadGameSpecificMSU1Files()
endmacro

macro PM2_GlobalAssemblySettings()
	!Define_Global_ApplyAsarPatches = !FALSE
	!Define_Global_InsertRATSTags = !TRUE
	!Define_Global_IgnoreCodeAlignments = !FALSE
	!Define_Global_IgnoreOriginalFreespace = !FALSE
	!Define_Global_CompatibleControllers = !Controller_StandardJoypad
	!Define_Global_DisableROMMirroring = !FALSE
	!Define_Global_CartridgeHeaderVersion = $00
	!Define_Global_FixIncorrectChecksumHack = !TRUE
	!Define_Global_ROMFrameworkVer = 1
	!Define_Global_ROMFrameworkSubVer = 0
	!Define_Global_ROMFrameworkSubSubVer = 0
	!Define_Global_AsarChecksum = $29D7
	!Define_Global_LicenseeName = "Namco"
	!Define_Global_DeveloperName = "Namco"
	!Define_Global_ReleaseDate = "September 1994"
	!Define_Global_BaseROMMD5Hash = "ed318ba5888f6e50851f166fee7023e2"

	!Define_Global_MakerCode = "AF"
	!Define_Global_GameCode = "xxxx"
	!Define_Global_ReservedSpace = $00,$00,$00,$00,$00,$00
	!Define_Global_ExpansionFlashSize = !ExpansionMemorySize_0KB
	!Define_Global_ExpansionRAMSize = !ExpansionMemorySize_0KB
	!Define_Global_IsSpecialVersion = $00
	!Define_Global_InternalName = "PACMAN2              "
	!Define_Global_ROMLayout = !ROMLayout_LoROM_FastROM
	!Define_Global_ROMType = !ROMType_ROM
	!Define_Global_CustomChip = !Chip_None
	!Define_Global_ROMSize = !ROMSize_1_5MB
	!Define_Global_SRAMSize = !SRAMSize_0KB
	!Define_Global_Region = !Region_NorthAmerica
	!Define_Global_LicenseeID = $AF
	!Define_Global_VersionNumber = $00
	!Define_Global_ChecksumCompliment = !Define_Global_Checksum^$FFFF
	!Define_Global_Checksum = $6781
	!UnusedNativeModeVector1 = $FFFF
	!UnusedNativeModeVector2 = $FFFF
	!NativeModeCOPVector = CODE_80FE5D
	!NativeModeBRKVector = CODE_80FE5D
	!NativeModeAbortVector = CODE_80FE5D
	!NativeModeNMIVector = CODE_80FE7F
	!NativeModeResetVector = $FFFF
	!NativeModeIRQVector = CODE_80FE15
	!UnusedEmulationModeVector1 = $FFFF
	!UnusedEmulationModeVector2 = $FFFF
	!EmulationModeCOPVector = CODE_80FE5D
	!EmulationModeBRKVector = $FFFF
	!EmulationModeAbortVector = CODE_80FE5D
	!EmulationModeNMIVector = CODE_80FE7F
	!EmulationModeResetVector = CODE_80FCD0
	!EmulationModeIRQVector = CODE_80FE15
endmacro

macro PM2_LoadROMMap()
	%PM2Bank80Macros(!BANK_00, !BANK_00)
	%PM2Bank81Macros(!BANK_01, !BANK_01)
	%PM2Bank82Macros(!BANK_02, !BANK_02)
	%PM2Bank83Macros(!BANK_03, !BANK_03)
	%PM2Bank84Macros(!BANK_04, !BANK_04)
	%PM2Bank85Macros(!BANK_05, !BANK_05)
	%PM2Bank86Macros(!BANK_06, !BANK_06)
	%PM2Bank87Macros(!BANK_07, !BANK_07)
	%PM2Bank88Macros(!BANK_08, !BANK_08)
	%PM2Bank89Macros(!BANK_09, !BANK_09)
	%PM2Bank8AMacros(!BANK_0A, !BANK_0A)
	%PM2Bank8BMacros(!BANK_0B, !BANK_0B)
	%PM2Bank8CMacros(!BANK_0C, !BANK_0C)
	%PM2Bank8DMacros(!BANK_0D, !BANK_0D)
	%PM2Bank8EMacros(!BANK_0E, !BANK_0E)
	%PM2Bank8FMacros(!BANK_0F, !BANK_0F)
	%PM2Bank90Macros(!BANK_10, !BANK_10)
	%PM2Bank91Macros(!BANK_11, !BANK_11)
	%PM2Bank92Macros(!BANK_12, !BANK_12)
	%PM2Bank93Macros(!BANK_13, !BANK_13)
	%PM2Bank94Macros(!BANK_14, !BANK_14)
	%PM2Bank95Macros(!BANK_15, !BANK_15)
	%PM2Bank96Macros(!BANK_16, !BANK_16)
	%PM2Bank97Macros(!BANK_17, !BANK_17)
	%PM2Bank98Macros(!BANK_18, !BANK_18)
	%PM2Bank99Macros(!BANK_19, !BANK_19)
	%PM2Bank9AMacros(!BANK_1A, !BANK_1A)
	%PM2Bank9BMacros(!BANK_1B, !BANK_1B)
	%PM2Bank9CMacros(!BANK_1C, !BANK_1C)
	%PM2Bank9DMacros(!BANK_1D, !BANK_1D)
	%PM2Bank9EMacros(!BANK_1E, !BANK_1E)
	%PM2Bank9FMacros(!BANK_1F, !BANK_1F)
	%PM2BankA0Macros(!BANK_20, !BANK_20)
	%PM2BankA1Macros(!BANK_21, !BANK_21)
	%PM2BankA2Macros(!BANK_22, !BANK_22)
	%PM2BankA3Macros(!BANK_23, !BANK_23)
	%PM2BankA4Macros(!BANK_24, !BANK_24)
	%PM2BankA5Macros(!BANK_25, !BANK_25)
	%PM2BankA6Macros(!BANK_26, !BANK_26)
	%PM2BankA7Macros(!BANK_27, !BANK_27)
	%PM2BankA8Macros(!BANK_28, !BANK_28)
	%PM2BankA9Macros(!BANK_29, !BANK_29)
	%PM2BankAAMacros(!BANK_2A, !BANK_2A)
	%PM2BankABMacros(!BANK_2B, !BANK_2F)
endmacro
