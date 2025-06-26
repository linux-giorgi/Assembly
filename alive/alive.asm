; alive.asm
section .data 
	msg_1 db "Hello,world!",10,0
	msg_1_len equ $-msg_1-1
	msg_2 db "Alive and Kicking!",10,0
	msg_2_len equ $-msg_2-1
	redius dq 357
	pi dq 3.1415
section .bss
section .text
	global main

main:
	push rbp
	mov rbp, rsp
	mov rax, 1
	mov rdi, 1
	mov rsi, msg_1
	mov rdx, msg_1_len
	syscall
	mov rax, 1
	mov rdi, 1
	mov rsi, msg_2
	mov rdx, msg_2_len
	syscall
	mov rsp, rbp
	pop rbp
	mov rax, 60
	mov rdi, 0
	syscall
