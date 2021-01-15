global _ft_strcmp

; int	strcmp(const char *s1, const char *s2)

_ft_strcmp:
	mov		al, BYTE [rdi]	; Move first byte of rdi in al
	mov		bl, BYTE [rsi]	; Move first byte of rsi in bl
	cmp		al, 0			; Compare if al == eos
	je		exit			; Exit
	cmp		bl, 0			; Compare if al == eos
	je		exit			; Exit
	cmp		al, bl			; Compare strings al and bl
	jne		exit			; If not equal exit
	inc		rdi				; Increment rdi
	inc		rsi				; Increment rsi
	jmp		_ft_strcmp		; Jump to _ft_strcmp to continue the string comparaison

exit:
	movzx	rax, al			; Move value al in rax
	movzx	r8, bl			; Move value bl in r8
	sub		rax, r8			; rax - r8 and obtain the difference
	ret						; Return rax
