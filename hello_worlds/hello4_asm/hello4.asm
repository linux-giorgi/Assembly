; hello4.asm
extern printf ; import external function
section  .data
	msg db "Hello, World!", 0
	fmt_str db "this is own String: %s", 10, 0; formated string
section .bss
section .text
	global main
main:
	push rbp;			function prologue
	mov rbp, rsp; function prologue
	mov	rdi, fmt_str ; first arg for printf
	mov rsi, msg;		 ; second arg for printf
	mov rax, 0
	call printf
	mov rsp, rbp
	pop rbp
	mov rax, 60
	mov rdi, 0
	syscall
