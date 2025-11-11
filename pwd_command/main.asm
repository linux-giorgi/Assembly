section .data
	new_line db  0xa
section .bss
	buffer resb 256
section .text
	global _start


_start:
	mov rax, 79
	mov rdi, buffer
	mov rsi, 256
	syscall

	cmp rax, 0
	js _error

	mov rax, 1
	mov rdi, 1
	mov rsi, buffer
	mov rdx, 256
	syscall
	
	mov rax, 1
	mov rdi, 1
	mov rsi, new_line
	mov rdx, 1
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

_error:
	mov rax, 60
	mov rdi, 1
	syscall