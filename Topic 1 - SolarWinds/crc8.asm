; Listing generated by Microsoft (R) Optimizing Compiler Version 19.32.31332.0 

	TITLE	C:\Users\jerem\OneDrive - Grand Canyon University\ITT-210 (2022 Revision)\A1 Resources\crc8.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_crc8
; Function compile flags: /Odtp
_TEXT	SEGMENT
_i$1 = -8						; size = 4
_sum$ = -4						; size = 1
_extract$ = -3						; size = 1
_tempI$2 = -2						; size = 1
_crc$ = -1						; size = 1
_data$ = 8						; size = 4
_length$ = 12						; size = 4
_crc8	PROC
; File C:\Users\jerem\OneDrive - Grand Canyon University\ITT-210 (2022 Revision)\A1 Resources\crc8.c
; Line 4
	push	ebp
	mov	ebp, esp
	sub	esp, 8
; Line 5
	mov	BYTE PTR _crc$[ebp], 0
; Line 8
	mov	DWORD PTR _i$1[ebp], 0
	jmp	SHORT $LN4@crc8
$LN2@crc8:
	mov	eax, DWORD PTR _i$1[ebp]
	add	eax, 1
	mov	DWORD PTR _i$1[ebp], eax
$LN4@crc8:
	mov	ecx, DWORD PTR _i$1[ebp]
	cmp	ecx, DWORD PTR _length$[ebp]
	jge	SHORT $LN3@crc8
; Line 10
	mov	edx, DWORD PTR _data$[ebp]
	mov	al, BYTE PTR [edx]
	mov	BYTE PTR _extract$[ebp], al
; Line 11
	mov	BYTE PTR _tempI$2[ebp], 8
	jmp	SHORT $LN7@crc8
$LN5@crc8:
	mov	cl, BYTE PTR _tempI$2[ebp]
	sub	cl, 1
	mov	BYTE PTR _tempI$2[ebp], cl
$LN7@crc8:
	movsx	edx, BYTE PTR _tempI$2[ebp]
	test	edx, edx
	je	SHORT $LN6@crc8
; Line 13
	movsx	eax, BYTE PTR _crc$[ebp]
	movsx	ecx, BYTE PTR _extract$[ebp]
	xor	eax, ecx
	and	eax, 1
	mov	BYTE PTR _sum$[ebp], al
; Line 14
	mov	dl, BYTE PTR _crc$[ebp]
	sar	dl, 1
	mov	BYTE PTR _crc$[ebp], dl
; Line 15
	movsx	eax, BYTE PTR _sum$[ebp]
	test	eax, eax
	je	SHORT $LN8@crc8
; Line 16
	movsx	ecx, BYTE PTR _crc$[ebp]
	xor	ecx, 140				; 0000008cH
	mov	BYTE PTR _crc$[ebp], cl
$LN8@crc8:
; Line 17
	mov	dl, BYTE PTR _extract$[ebp]
	sar	dl, 1
	mov	BYTE PTR _extract$[ebp], dl
; Line 18
	jmp	SHORT $LN5@crc8
$LN6@crc8:
; Line 19
	mov	eax, DWORD PTR _data$[ebp]
	add	eax, 1
	mov	DWORD PTR _data$[ebp], eax
; Line 20
	jmp	SHORT $LN2@crc8
$LN3@crc8:
; Line 21
	mov	al, BYTE PTR _crc$[ebp]
; Line 22
	mov	esp, ebp
	pop	ebp
	ret	0
_crc8	ENDP
_TEXT	ENDS
END