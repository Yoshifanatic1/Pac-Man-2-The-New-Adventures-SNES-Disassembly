@echo off

set hackname=PM2.sfc

setlocal EnableDelayedExpansion
set Loopcounter=0
set LvlNumber=0
set Input1=""

set address=0

echo Note: Use ExtractAssets.bat if you intend on extracting the assets from a ROM.
echo This file was used to help extract some things prior to knowing where everything was.
echo This script should only be used if support for new versions of PM2 is being added to the disassembly and those versions have new or modified assets.
echo.

echo Type which mode you want to use:
echo 0 = SPC700 Data
echo 1 = Compressed Data

:Mode
set /p Input1=""
if "%Input1%" equ "0" goto :SPCData
if "%Input1%" equ "1" goto :Compressed

echo %Input1% is not a valid mode.
goto :Mode

:SPCData
set ROMAddr=818546
set ReadROM=1
:Loop1

CALL :Addrfunc

if exist Test.asm del Test.asm
if exist Test2.asm del Test2.asm

echo:lorom >> Test.asm
echo:org $008000>> Test.asm
echo:^^!LvlNum = %LvlNumber% >> Test.asm
echo:^^!hackname = %hackname% >> Test.asm
echo:check bankcross off >> Test.asm
echo:^^!offset #= snestopc(readfile4("^!hackname", snestopc($818546)+((^^!LvlNum^&$1FF)*4))) >> Test.asm
echo:^^!offset2 #= readfile2("^!hackname", ^^!offset)+$04 >> Test.asm
echo:^^!offset3 #= ^^!offset2+^^!offset >> Test.asm
echo:while readfile2("^!hackname", ^^!offset3) ^^!= $0000 >> Test.asm
echo:print "Jumped ahead $",hex(^^!offset2)," byte(s) to 0x",hex(^^!offset3) >> Test.asm
echo:^^!offset2 #= readfile2("^!hackname", ^^!offset3)+$04 >> Test.asm
echo:^^!offset3 #= ^^!offset2+^^!offset3 >> Test.asm
echo:endif >> Test.asm
echo:^^!offset4 #= pctosnes(^^!offset) >> Test.asm
echo:^^!offset5 #= pctosnes(^^!offset3) >> Test.asm
echo:incbin ^^!hackname:(^^!offset)-(^^!offset3+$04) >> Test.asm
echo:print "File offset 1: 0x",hex(^^!offset4) >> Test.asm
echo:print "File offset 2: 0x",hex(^^!offset5) >> Test.asm
echo:print "Extracted the file at offset $",hex(^^!offset4) >> Test.asm

asar --fix-checksum=off --no-title-check "Test.asm" DATA_%address%.bin

set /a Loopcounter+=1
set /a LvlNumber+=1
if %Loopcounter% neq 47 goto :Loop1
echo Note: The last file must be extracted manually with a hex editor.

if exist Temp.txt del Temp.txt
if exist Test.asm del Test.asm
if exist Test2.asm del Test2.asm

pause
exit

:Compressed
echo.
echo "Type the compressed data address (Ex. DATA_81A852 -> 81A852)"

set /p Input1=""

set Input1=%Input1%

if exist Temp.txt del Temp.txt
if exist Test.asm del Test.asm
if exist Test2.asm del Test2.asm

set ROMAddr=%Input1%
set ReadROM=0
CALL :Addrfunc

echo:lorom >> Test.asm
echo:org $008000>> Test.asm
echo:^^!LvlNum = %LvlNumber% >> Test.asm
echo:^^!hackname = %hackname% >> Test.asm
echo:check bankcross off >> Test.asm
echo:^^!offset #= (snestopc($%Input1%)) >> Test.asm
echo:^^!offset2 #= (readfile1("^!hackname", ^^!offset)) >> Test.asm
echo:^^!offset3 #= ^^!offset >> Test.asm
echo:while readfile1("^!hackname", ^^!offset3) ^^!= $00 >> Test.asm
echo:^^!offset2 #= (readfile1("^!hackname", ^^!offset3)) >> Test.asm
echo:if ^^!offset2^&$01 == $00 >> Test.asm
echo:^^!offset2 #= ((^^!offset2/$02)+$01) >> Test.asm
echo:else >> Test.asm
echo:^^!offset2 #= $02 >> Test.asm>> Test.asm
echo:endif >> Test.asm
echo:^^!offset3 #= ^^!offset2+^^!offset3 >> Test.asm
echo:print "Jumped ahead $",hex(^^!offset2)," byte(s) to 0x",hex(^^!offset3) >> Test.asm
echo:endif >> Test.asm 
echo:^^!offset4 #= pctosnes(^^!offset) >> Test.asm
echo:^^!offset5 #= pctosnes(^^!offset3+$01) >> Test.asm
echo:incbin ^^!hackname:(^^!offset)-(^^!offset3+$01) >> Test.asm
echo:print "File offset 1: 0x",hex(^^!offset4) >> Test.asm
echo:print "File offset 2: 0x",hex(^^!offset5) >> Test.asm
echo:print "Extracted the file at offset $",hex(^^!offset4) >> Test.asm

asar --fix-checksum=off --no-title-check "Test.asm" DATA_%address%.bin

goto :Compressed

EXIT /B %ERRORLEVEL% 

:Addrfunc
echo:lorom> Test2.asm
echo:org $008000>> Test2.asm
echo:^^!LvlNum = %LvlNumber% >> Test2.asm
echo:^^!hackname = %hackname% >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:check bankcross off >> Test2.asm
echo:if $%ReadROM% == $01 >> Test2.asm
echo:^^!offset #= readfile4("^!hackname", snestopc($%ROMAddr%)+((^^!LvlNum^&$1FF)*4)) >> Test2.asm
echo:else >> Test2.asm
echo:^^!offset = $%ROMAddr% >> Test2.asm
echo:endif >> Test2.asm
echo:if ((^^!offset^&$F00000)/$100000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$F00000)/$100000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$0F0000)/$10000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$0F0000)/$10000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$00F000)/$1000) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$00F000)/$1000)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$000F00)/$100) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$000F00)/$100)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$0000F0)/$10) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$0000F0)/$10)+^^!ASCIIoffset >> Test2.asm
echo:if ((^^!offset^&$00000F)/$1) ^> $09 >> Test2.asm
echo:^^!ASCIIoffset = $37 >> Test2.asm
echo:else >> Test2.asm
echo:^^!ASCIIoffset = $30 >> Test2.asm
echo:endif >> Test2.asm
echo:db ((^^!offset^&$00000F)/$1)+^^!ASCIIoffset >> Test2.asm
asar "Test2.asm" Temp.txt

for /f "delims=" %%x in (Temp.txt) do set address=%%x
EXIT /B 0