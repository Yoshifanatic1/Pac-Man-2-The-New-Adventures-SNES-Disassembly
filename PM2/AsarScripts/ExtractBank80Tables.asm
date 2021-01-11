; This will dump the text at $8080F8 from the USA PM2 ROM if applied to it.
; Note that in the dumped text, + represents ", % represents a space, and & represents something that wasn't a standard character.
; Also, it may take a second before asar starts displaying anything on the command line.

!Offset = $8080F8
!EndOffset = $808A52
!Index = 0
!ByteCount = 0
!LetterFlag #= 0
!PriorLetterFlag #= 0
!RowByteCount = 0
!PrintData = ""
!ForceNewLine #= 0

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
	!Output16 = ""
	!Output17 = ""
	!Output18 = ""
	!Output19 = ""
	!Output20 = ""
	!Output21 = ""
	!Output22 = ""
	!Output23 = ""
	!Output24 = ""
	!Output25 = ""
	!Output26 = ""
	!Output27 = ""
	!Output28 = ""
	!Output29 = ""
	!Output30 = ""
	!Output31 = ""
	!Output32 = ""
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
	!LZ16 = ""
	!LZ17 = ""
	!LZ18 = ""
	!LZ19 = ""
	!LZ20 = ""
	!LZ21 = ""
	!LZ22 = ""
	!LZ23 = ""
	!LZ24 = ""
	!LZ25 = ""
	!LZ26 = ""
	!LZ27 = ""
	!LZ28 = ""
	!LZ29 = ""
	!LZ30 = ""
	!LZ31 = ""
	!LZ32 = ""
endmacro

macro HandleLineOfData(ID)
if !PriorLetterFlag = 0
	if <ID> == 0
		!PrintData += "	db $!LZ<ID>',hex(!Output<ID>)"
	else
		!PrintData += ",',$!LZ<ID>',hex(!Output<ID>)"
	endif
else
	if <ID> == 0
		!PrintData += "	db @!Output<ID>"
	else
		!PrintData += "!Output<ID>"
	endif
endif
endmacro

macro HandleLetters(ID)
	if !Input1 == $20
		!Output<ID> += "%"
		!LetterFlag #= 1
	elseif !Input1 == $30
		!Output<ID> += 0
		!LetterFlag #= 1
	elseif !Input1 == $31
		!Output<ID> += 1
		!LetterFlag #= 1
	elseif !Input1 == $32
		!Output<ID> += 2
		!LetterFlag #= 1
	elseif !Input1 == $33
		!Output<ID> += 3
		!LetterFlag #= 1
	elseif !Input1 == $34
		!Output<ID> += 4
		!LetterFlag #= 1
	elseif !Input1 == $35
		!Output<ID> += 5
		!LetterFlag #= 1
	elseif !Input1 == $36
		!Output<ID> += 6
		!LetterFlag #= 1
	elseif !Input1 == $37
		!Output<ID> += 7
		!LetterFlag #= 1
	elseif !Input1 == $38
		!Output<ID> += 8
		!LetterFlag #= 1
	elseif !Input1 == $39
		!Output<ID> += 9
		!LetterFlag #= 1
	elseif !Input1 == $41
		!Output<ID> += A
		!LetterFlag #= 1
	elseif !Input1 == $42
		!Output<ID> += B
		!LetterFlag #= 1
	elseif !Input1 == $43
		!Output<ID> += C
		!LetterFlag #= 1
	elseif !Input1 == $44
		!Output<ID> += D
		!LetterFlag #= 1
	elseif !Input1 == $45
		!Output<ID> += E
		!LetterFlag #= 1
	elseif !Input1 == $46
		!Output<ID> += F
		!LetterFlag #= 1
	elseif !Input1 == $47
		!Output<ID> += G
		!LetterFlag #= 1
	elseif !Input1 == $48
		!Output<ID> += H
		!LetterFlag #= 1
	elseif !Input1 == $49
		!Output<ID> += I
		!LetterFlag #= 1
	elseif !Input1 == $4A
		!Output<ID> += J
		!LetterFlag #= 1
	elseif !Input1 == $4B
		!Output<ID> += K
		!LetterFlag #= 1
	elseif !Input1 == $4C
		!Output<ID> += L
		!LetterFlag #= 1
	elseif !Input1 == $4D
		!Output<ID> += M
		!LetterFlag #= 1
	elseif !Input1 == $4E
		!Output<ID> += N
		!LetterFlag #= 1
	elseif !Input1 == $4F
		!Output<ID> += O
		!LetterFlag #= 1
	elseif !Input1 == $50
		!Output<ID> += P
		!LetterFlag #= 1
	elseif !Input1 == $51
		!Output<ID> += Q
		!LetterFlag #= 1
	elseif !Input1 == $52
		!Output<ID> += R
		!LetterFlag #= 1
	elseif !Input1 == $53
		!Output<ID> += S
		!LetterFlag #= 1
	elseif !Input1 == $54
		!Output<ID> += T
		!LetterFlag #= 1
	elseif !Input1 == $55
		!Output<ID> += U
		!LetterFlag #= 1
	elseif !Input1 == $56
		!Output<ID> += V
		!LetterFlag #= 1
	elseif !Input1 == $57
		!Output<ID> += W
		!LetterFlag #= 1
	elseif !Input1 == $58
		!Output<ID> += X
		!LetterFlag #= 1
	elseif !Input1 == $59
		!Output<ID> += Y
		!LetterFlag #= 1
	elseif !Input1 == $5A
		!Output<ID> += Z
		!LetterFlag #= 1
	elseif !Input1 == $5C
		!Output<ID> += "-"
		!LetterFlag #= 1
	elseif !Input1 == $5D
		!Output<ID> += "."
		!LetterFlag #= 1
	elseif !Input1 == $5F
		!Output<ID> += "\!"
		!LetterFlag #= 1
	elseif !Input1 == $62
		!Output<ID> += ":"
		!LetterFlag #= 1
	elseif !Input1 == $63
		!Output<ID> += "'"
		!LetterFlag #= 1
	elseif !Input1 == $FD
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
		!ForceNewLine #= 1
	elseif !Input1 == $FE
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
		!ForceNewLine #= 1
	elseif !Input1 == $00
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
		!RowByteCount = 31
	else
		!LetterFlag #= 0
		%HandleVariableDefine(!RowByteCount)
	endif
endmacro

macro PrintVariableData(Data)
if !PriorLetterFlag = 0
	print "print '<Data>"
else
	print "print '<Data>@'"
endif
endmacro

;macro AppendQuoteOnSwitch(ID)
;if !PriorLetterFlag = 0
;	!Output<ID> += "'"
;else
;	!Output<ID> += "',"
;endif
;endmacro

print "lorom"
print "print 'DATA_",hex(!Offset),":'"
%ClearDefines()
while !Offset+!ByteCount < !EndOffset
	!Input1 = read1(!Offset+!ByteCount)
	%HandleLetters(!RowByteCount)
	if !RowByteCount == 32
		%PrintVariableData("!PrintData")
		%ClearDefines()
		!PrintData = ""
		!RowByteCount #= $00
		print ""
		print "print 'DATA_",hex(!Offset+!ByteCount),":'"
		%HandleLetters(!RowByteCount)
	elseif !ForceNewLine == 1
		%PrintVariableData("!PrintData")
		%ClearDefines()
		!PrintData = ""
		!RowByteCount #= $00
		%HandleLetters(!RowByteCount)
	endif
	if !LetterFlag != !PriorLetterFlag
		!PriorLetterFlag #= !LetterFlag
	endif
	%HandleLineOfData(!RowByteCount)
	!ByteCount #= !ByteCount+1
	!RowByteCount #= !RowByteCount+1
	!ForceNewLine #= 0
endif
