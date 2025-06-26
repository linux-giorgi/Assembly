; hello2.asm
section .data
	msg db "Hello, World",0
	New_line db 0xa ; \n in ascii
section .bss
section .text
	global main
main:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, New_line
	mov rdx, 1
	syscall
	mov rax, 60
	mov rdi, 0
	syscall
