section .text
	global _ft_strcpy

; ft_strcpy(rdi = [argv[0]], rsi = [argv[1]])

_ft_strcpy:
	mov		rax, 0					; init rax to 0
	jmp		copy_str				; Jump to copy_str

copy_str:
	cmp		cl, 0					; Compare cl if '\0'
	je		exit					; if true exit
	mov		cl, [rax + rsi]			; Move byte [rax + rsi] in cl rsi is the source
	mov		[rax + rdi], cl			; Move byte cl in rdi + rax rdi is the destination
	inc		rax						; rax++
	jmp		copy_str				; loop in copy_str

exit:
	mov		cl, 0					; set '\0' in string
	mov		[rdi + rax], cl			; Move the last byte in rax
	mov		rax, rdi
	ret								; Return rax
