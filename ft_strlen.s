section .text
	global _ft_strlen

; size_t	ft_strlen(const char *s)

_ft_strlen:
	mov		rax, 0				; init rax to 0
	
loop:
	cmp		BYTE [rdi + rax], 0	; compare address rdi and rax
	je		exit				; rdi[rax] == 0; call exit func
	inc		rax					; rax += 1
	jmp		loop				; jump to loop

exit:
	ret							; return rax
