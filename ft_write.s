section .text
	global _ft_write

; ft_write(rdi = [argv[0]], rsi = [argv[1]], rdx = [argv[2]])

_ft_write:
	mov		rax, 0x2000004	; Move sys_write in rax
	syscall
	jc		err_exit		; Exit if err
	ret						; Return length of string

err_exit:
	mov		rax, -1			; Set rax with value -1
	ret						; Return rax error
