; This will dump the data for an asar patch that will be applied to the USA PM2 ROM. Said patch will dump the hundreds of tables in bank 8B when applied to the ROM.
; The reason I'm generating a patch and not the tables directly is because of asar limitations. I don't think it's possible for asar to resolve commands through a define while in a print statement.
; Also, it may take a second before asar starts displaying anything on the command line. In addition, you'll need to replace the ' with " in the output patch, otherwise asar won't assemble the patch.
; Lastly, you'll have to extract the last block manually, as there is no pointer after its pointer, and that will cause asar to hang.

!Offset = $8B99BD
!EndOffset = $8BA8B6

macro HandleVariableDefine(ID)
	!Output<ID> #= !Input1
	if !Input1 < 16
		!LZ<ID> += "0"
	else
		!LZ<ID> += ""
	endif
endmacro

macro ClearDefines()
	!Output0 = ""
	!Output1 = ""
	!Output2 = ""
	!Output3 = ""
	!Output4 = ""
	!Output5 = ""
	!Output6 = ""
	!Output7 = ""
	!Output8 = ""
	!Output9 = ""
	!Output10 = ""
	!Output11 = ""
	!Output12 = ""
	!Output13 = ""
	!Output14 = ""
	!Output15 = ""
	!LZ0 = ""
	!LZ1 = ""
	!LZ2 = ""
	!LZ3 = ""
	!LZ4 = ""
	!LZ5 = ""
	!LZ6 = ""
	!LZ7 = ""
	!LZ8 = ""
	!LZ9 = ""
	!LZ10 = ""
	!LZ11 = ""
	!LZ12 = ""
	!LZ13 = ""
	!LZ14 = ""
	!LZ15 = ""
endmacro

macro HandleLineOfData(ID)
	if <ID> == 0
		!PrintData += "	db $!LZ<ID>',hex(!Output<ID>)"
	else
		!PrintData += ",',$!LZ<ID>',hex(!Output<ID>)"
	endif
endmacro

macro PrintVariableData(Data)
	print "print '<Data>"
endmacro

!LoopCounter = 0
print "lorom"

while !Offset+!LoopCounter < !EndOffset
	!Input1 #= $00
	%ClearDefines()
	!RowByteCount = 0
	!ExitLoop = 0
	!PrintData = ""
	print "print 'DATA_',hex(!Offset+!LoopCounter),':'"
	while !ExitLoop != 1
		if !Input1 == $FF
			!ExitLoop = 1
		endif
		!Input1 = read1(!Offset+!LoopCounter)
		%HandleVariableDefine(!RowByteCount)
		%HandleLineOfData(!RowByteCount)
		!LoopCounter #= !LoopCounter+1
		!RowByteCount #= !RowByteCount+1
		if !RowByteCount == 16
			%PrintVariableData("!PrintData")
			%ClearDefines()
			!PrintData = ""
			!RowByteCount #= $00
		endif
	endif
	if !RowByteCount != 0
		%PrintVariableData("!PrintData")
	endif
	print "print ''"
endif
