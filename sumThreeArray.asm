TITLE Summing Three Arrays (sumThreeArray.asm)

.586
.model flat,C

SumThreeArrays PROTO,
	array1:PTR DWORD, array2:PTR DWORD, 
	array3:PTR DWORD, arraySize:DWORD

.code
;-----------------------------------------------
SumThreeArrays PROC USES eax ebx esi,
	array1:PTR DWORD, array2:PTR DWORD, 
	array3:PTR DWORD, arraySize:DWORD
;-----------------------------------------------
	LOCAL sz:BYTE		; local sz for jump
	mov sz, 4					; size of each iteration jump
	mov ecx, arraySize			; set ecx to size of arrays for loop
	
L1:
	mov eax, arraySize			; move array size into eax
	sub eax, ecx				; subtract whats left
	mul sz						; multiply by 4 to know how much to jump
	
	mov esi, array1				; set esi to start of array 1
	mov ebx, [esi+eax]			; move value of esi+jump into ebx
	
	mov esi, array2				; set esi to start of array 2
	add ebx, [esi+eax]			; add value of esi+jump to ebx

	mov esi, array3				; set esi to start of array 3
	add ebx, [esi+eax]			; add value of esi+jump to ebx

	mov esi, array1				; set esi to start of array 1
	mov [esi+eax], ebx			; move value of ebx into esi+jump

	LOOP L1

	ret  
SumThreeArrays ENDP

END