		; Set B to 8, which represents the last index of the array to fill
		MVI B, 8
		
		; Set HL pointer to the beginning of the memory
		MVI H, 0
		MVI L, 0
		
		; Loop to fill memory with values 1, 2, 3, ..., 8
	loop: INR L                   ; Increase the value of L (memory address) by 1
		MOV M, L                     ; Store the value of L to the memory address pointed by HL
		MOV A, L                     ; Copy the value of L to the accumulator A
		CMP B                        ; Compare the value of A with B (last index)
		JM loop                      ; Jump to loop if the value of A is less than B
		
		; Binary search algorithm
		
		; Initialize variables for binary search
		MVI B, 0                     ; Set B as the lower bound index (0)
		MVI C, 8                     ; Set C as the upper bound index (7)
		MVI D, 5                     ; Set D as the value to search for
		MVI L, 9                     ; Set L as the memory address where the result will be stored
		MVI M, 255                   ; Set the initial value of the result to 255, which means not found
		
	while: MOV A, C               ; Copy the value of C to the accumulator A
		CMP B                        ; Compare the value of A with B (lower bound)
		JM exit                      ; If A is less than B, exit the loop
		
		; Calculate the middle index between the upper and lower bounds
		ADD C                        ; Add the value of C to A (high + low)
		RAR                          ; Shift A to the right (divide by 2)
		ADD B                        ; Add the value of B to A (middle index)
		RAR
		MOV E, A                     ; Move the middle index to E
		
		; Get the value of the middle index from memory
		MOV L, E                     ; Move the memory address to L (middle index)
		MOV A, M                     ; Move the value at the memory address pointed by L to A
		
		; Compare the value at the middle index with the value to search for
		CMP D
		JZ equals                    ; If A is equal to D, jump to equals
		JM less                      ; If A is less than D, jump to less
		JP greater                   ; If A is greater than D, jump to greater
		
	equals: MVI L, 9              ; Set L as the memory address where the result will be stored
		MOV M, E                     ; Move the middle index to the memory address pointed by L
		JMP exit                     ; Jump to exit
		
	less: MOV A, E                ; Move the middle index to A
		INR A                        ; Increase the value of A by 1
		MOV B, A                     ; Move the new value of A to B (new lower bound)
		JMP while                    ; Jump to while
		
	greater: MOV A, E             ; Move the middle index to A
		DCR A                        ; Increase the value of A by 1
		MOV C, A                     ; Move the new value of A to C (new upper bound)
		JMP while                    ; Jump to while
		
	exit: HLT                     ; Halt the execution of the program

