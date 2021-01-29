section .text
	global _ft_strcmp

; int	strcmp(const char *s1, const char *s2)

_ft_strcmp:
	push	rbp						; https://beta.hackndo.com/stack-introduction/#prologue---%C3%A9pilogue
	mov		rbp, rsp				; https://stackoverflow.com/questions/42208087/are-the-prologue-and-epilogue-mandatory-when-writing-assembly-functions
	xor		rax, rax                ; Init rax to 0
	xor		rbx, rbx                ; Init iterative to 0
	xor		cx, cx                  ; Init cx to 0 to manipulate rdi
	xor		dx, dx                  ; Init dx to 0 to manipulate rsi

_loop:
	mov		cl, BYTE [rdi + rbx]	; Move byte of rdi in cl
	mov		dl, BYTE [rsi + rbx]	; Move byte of rsi in bl
	or		cl, cl					; return if '\0' in first string ; https://stackoverflow.com/questions/22123863/or-al-al-in-x86-assembly
	jz		_exit						
	or		dl, dl					; return if '\0' in second string
	jz		_exit
	cmp		cl, dl					; Exit func if strings cl, dl not equals
	jne		_exit					
	inc		rbx 					; Increment iterator
	jmp		_loop					; Jump to _loop to continue the string comparaison

_exit:
	sub		cx, dx					; subtraction of char cx, dx
	jl		_neg					; if neg ret -1
	jg		_pos					; if pos ret 1
	mov		rax, 0					; if equal to 0 ret 0
	pop		rbp
	ret								; ret rax

_pos:
	mov		rax, 1					; set rax to 1
	pop		rbp
	ret

_neg:
	mov 	rax, -1					; set rax to -1
	pop rbp
	ret

