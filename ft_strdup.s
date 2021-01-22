global _ft_strdup

extern _ft_strlen
extern _ft_strcpy
extern _malloc

;	ft_strdup(rdi = [argv[0]])

_ft_strdup:
	push	rdi			;
	push	rsi			;
	call	_ft_strlen	;
	push	r8			;
	mov		r8, rdi		;
	mov		rdi, rax	;
	inc		rdi			;
	call	_malloc		;
	pop		rdi			;
	mov		rsi, r8		;
	mov		rdi, rax	;
	call	_ft_strcpy	;
	pop		rdi			;
	pop		rsi			;
	ret

_fail:
	pop		rdi			;
	ret					;
