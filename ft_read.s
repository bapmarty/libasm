global _ft_read

;	ft_read(rdi = [argv[0]], rsi = [argv[1]], rdx = [argv[2]])

_ft_read:
	mov		rax, 0x2000003	; Move sys_read in rax
	syscall
	jc		err_exit		; Exit if err
	ret						; Return length of read

	ret

err_exit:
	mov		rax, -1			; Set rax with value -1
	ret						; Return rax error
