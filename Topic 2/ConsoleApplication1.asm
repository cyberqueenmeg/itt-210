.386​

.model flat,stdcall​

​

.data​

list BYTE 10h,20h,30h,40h​

; $ -> current data location counter ​

; list -> start of list​

; TYPE -> size of the type​

listLength = ($ - list) / TYPE list ​

listSize = ($ - list)​

​

list2 WORD 1000h,2000h,3000h,4000h​

list2Length = ($ - list2) / TYPE list2 ​

list2Size = ($ - list2)​

​

list3 DWORD 1000h,2000h,3000h,4000h​

list3Length = ($ - list3) / TYPE list3 ​

list3Size = ($ - list3)​

​

.code​

main proc​

mov  eax, listLength​

mov  ebx, listSize​

​

mov  eax, list2Length​

mov  ebx, list2Size​

​

mov  eax, list3Length​

mov  ebx, list3Size​

​

ret​

main endp​

end main