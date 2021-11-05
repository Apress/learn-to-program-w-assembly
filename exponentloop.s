.globl _start

# This will calculate 2^3.
# You can modify %rbx and %rcx to calculate 
# another exponential.

.section .text
_start:
	# %rbx will hold the base
	movq $2, %rbx

	# %rcx will hold the current exponent count
	movq $3, %rcx

	# Store the accumulated value in rax
	movq $1, %rax

	# If the exponent is equal to zero, we are done
	cmpq $0, %rcx
	je complete
	
mainloop:
	# Multiply the accumulated value by our base
	mulq %rbx

	# Decrement %rcx, go back to loop label if %rcx is 
	# not yet zero
	loopq mainloop

complete:
	# Move the accumulated value to %rdi so we can return it
	movq %rax, %rdi
	# call the "exit" system call
	movq $60, %rax
	syscall
