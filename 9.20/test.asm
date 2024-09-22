.386

.model flat, stdcall

.data

string1 BYTE "Hello, world!", 0

string1Size = ($ - string1)

string1Length = string1Size - 1

string2 BYTE "Assembly Language!", 0

string2Size = ($ - string2)

string2Length = string2Size - 1

string3 BYTE "MASM Example", 0

string3Size = ($ - string3)

string3Length = string3Size - 1

.code

main proc

mov  eax, string1Length  ; Length of string1 (without null terminator)

mov  ebx, string1Size    ; Total size of string1 (including null terminator)

mov  eax, string2Length  ; Length of string2 (without null terminator)

mov  ebx, string2Size    ; Total size of string2 (including null terminator)

mov  eax, string3Length  ; Length of string3 (without null terminator)

mov  ebx, string3Size    ; Total size of string3 (including null terminator)

ret

main endp

end main
