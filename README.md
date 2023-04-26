# **Implementation**

1. Introduction to the Binary Search Algorithm:

The binary search algorithm is a popular search algorithm used to locate an element in a sorted list or array. It works by repeatedly dividing the search interval in half, and comparing the middle element of the interval to the target value. If the target value is less than the middle element, the search is continued in the lower half of the interval; if the target value is greater, the search is continued in the upper half of the interval. The search continues until the target value is found or the interval is empty.

Binary search is often preferred over linear search (which searches each element one-by-one) for large datasets, as it has a worst-case time complexity of O(log n), where n is the size of the dataset. This means that the algorithm can find the target value in at most log n comparisons, making it much faster than linear search, which has a worst-case time complexity of O(n). However, binary search requires that the dataset is sorted beforehand, which can add some overhead if the dataset is frequently updated or modified. Overall, binary search is a widely-used and effective algorithm for searching sorted datasets.

2. **Algorithm** :

The binary search algorithm is implemented within a larger program that fills an array with values and then searches for a specific value using binary search. The specific implementation uses registers to store the variables and performs arithmetic and conditional branching instructions to implement the algorithm.

**Design:**

1. Set B to 8, which represents the last index of the array to fill

2. Set HL pointer to the beginning of the memory

3. Loop to fill memory with values 1, 2, 3, ..., 8:

a. Increase the value of L (memory address) by 1

b. Store the value of L to the memory address pointed by HL

c. Copy the value of L to the accumulator A

d. Compare the value of A with B (last index)

e. If the value of A is less than B, jump to step a.

4. Binary search algorithm:

a. Initialize variables for binary search:

i. Set B as the lower bound index (0)

ii. Set C as the upper bound index (7)

iii. Set D as the value to search for

iv. Set L as the memory address where the result will be stored

v. Set the initial value of the result to 225, which means not found

b. Loop while the lower bound index is less than or equal to the upper bound index:

i. Copy the value of C to the accumulator A

ii. Compare the value of A with B (lower bound)

iii. If A is less than B, exit the loop

iv. Calculate the middle index between the upper and lower bounds:

1. Add the value of C to A (high + low)

2. Shift A to the right (divide by 2)

3. Add the value of B to A (middle index)

4. Move the middle index to E

v. Get the value of the middle index from memory

vi. Compare the value at the middle index with the value to search for:

1. If A is equal to D, jump to step vii

2. If A is less than D, jump to step viii

3. If A is greater than D, jump to step ix

vii. Set L as the memory address where the result will be stored

viii. Move the middle index to A, increase the value of A by 1, move the new value of A to B (new lower bound), jump to step b.

ix. Move the middle index to A, decrease the value of A by 1, move the new value of A to C (new upper bound), jump to step b.

c. Halt the execution of the program.

**Design Description:**
 The algorithm design consists of two parts: first, filling an array in memory with values from 1 to 8, and second, performing a binary search on that array to find a specific value.

In the first part of the algorithm, B is set to 8, which represents the last index of the array to fill. The HL pointer is set to the beginning of the memory. Then a loop is initiated to fill memory with values 1, 2, 3, ..., 8. Within the loop, L (memory address) is incremented by 1, and the value of L is stored to the memory address pointed by HL. Then, the value of L is copied to the accumulator A. A is compared with B (last index), and if the value of A is less than B, the loop continues to the next iteration. This loop ensures that the memory array is filled with the desired values.

In the second part of the algorithm, variables for binary search are initialized. B is set as the lower bound index (0), C as the upper bound index (7), D as the value to search for, L as the memory address where the result will be stored, and the initial value of the result is set to 225, which means not found. Then, a loop is initiated while the lower bound index is less than or equal to the upper bound index. Within the loop, the value of C is copied to the accumulator A, and A is compared with B (lower bound). If A is less than B, the loop is exited. The middle index between the upper and lower bounds is calculated by adding the value of C to A (high + low), shifting A to the right (divide by 2), adding the value of B to A (middle index), and then moving the middle index to E. The value of the middle index is then obtained from memory. The value at the middle index is compared with the value to search for. If A is equal to D, L is set as the memory address where the result will be stored. If A is less than D, the middle index is moved to A, the value of A is increased by 1, the new value of A is moved to B (new lower bound), and the loop continues from step b. If A is greater than D, the middle index is moved to A, the value of A is decreased by 1, the new value of A is moved to C (new upper bound), and the loop continues from step b. Finally, the execution of the program is halted.

In summary, this algorithm design initializes a memory array with values from 1 to 8 and performs a binary search on that array to find a specific value. It uses a loop to fill the array with the desired values and another loop to perform the binary search. The binary search algorithm works by dividing the array into halves and comparing the value at the middle index with the value to search for. The search continues in the half of the array where the desired value may be present until the value is found or the search area is narrowed down to a single element.

Here's the pseudo-code for the above algorithm design:

![Shape1](RackMultipart20230426-1-h5mqso_html_98b6e41f054404c4.gif)

// Initialize variables for binary search

lower\_bound = 0

upper\_bound = 7

search\_value = 5

result = -1

while (upper\_bound \>= lower\_bound) do

// Calculate the middle index between the upper and lower bounds

middle\_index = (lower\_bound + upper\_bound) / 2

// Get the value of the middle index from memory

middle\_value = memory[middle\_index]

if (middle\_value == search\_value) then

result = middle\_index

exit loop

else if (middle\_value \< search\_value) then

lower\_bound = middle\_index + 1

else

upper\_bound = middle\_index - 1

// Print the result

End

![](RackMultipart20230426-1-h5mqso_html_dc7d6dc28e119b38.png) Flowchart drawn using [draw.io](https://drive.google.com/file/d/1p8t8xyJM1UkG18Skx9BfgeBSFR4kRzEo/view?usp=sharing) tool.

**8085 Assembly Code**

_; Set B to 8, which represents the last index of the array to fill_

MVIB, 8

_; Set HL pointer to the beginning of the memory_

MVIH, 0

MVIL, 0

_; Loop to fill memory with values 1, 2, 3, ..., 8_

loop: INRL_; Increase the value of L (memory address) by 1_

MOV M, L_; Store the value of L to the memory address pointed by HL_

MOV A, L_; Copy the value of L to the accumulator A_

CMP B_; Compare the value of A with B (last index)_

JMloop_; Jump to loop if the value of A is less than B_

_; Binary search algorithm_

_; Initialize variables for binary search_

MVIB, 0_; Set B as the lower bound index (0)_

MVIC, 8_; Set C as the upper bound index (8)_

MVID, 5_; Set D as the value to search for_

MVIL, 9_; Set L as the memory address where the result will be stored_

MVIM, 225_; Set the initial value of the result to 225, which means not found_

while: MOV A, C_; Copy the value of C to the accumulator A_

CMP B_; Compare the value of A with B (lower bound)_

JMexit_; If A is less than B, exit the loop_

_; Calculate the middle index between the upper and lower bounds_

ADD C_; Add the value of C to A (high + low)_

RAR_; Shift A to the right (divide by 2)_

ADD B_; Add the value of B to A (middle index)_

RAR

MOV E, A_; Move the middle index to E_

_; Get the value of the middle index from memory_

MOV L, E_; Move the memory address to L (middle index)_

MOV A, M_; Move the value at the memory address pointed by L to A_

_; Compare the value at the middle index with the value to search for_

CMP D

JZ equals_; If A is equal to D, jump to equals_

JMless_; If A is less than D, jump to less_

JPgreater_; If A is greater than D, jump to greater_

equals: MVIL, 9_; Set L as the memory address where the result will be stored_

MOV M, E_; Move the middle index to the memory address pointed by L_

JMP exit_; Jump to exit_

less: MOV A, E_; Move the middle index to A_

INRA_; Increase the value of A by 1_

MOV B, A_; Move the new value of A to B (new lower bound)_

JMP while_; Jump to while_

greater: MOV A, E_; Move the middle index to A_

DCRA_; Increase the value of A by 1_

MOV C, A_; Move the new value of A to C (new upper bound)_

JMP while_; Jump to while_

exit: HLT _; Halt the execution of the program_

This code contains two parts: memory initialization with values 1 to 8 and a binary search algorithm to search for a specific value within the memory.

In the first part, the code sets the value of register B to 8, which represents the last index of the memory to fill. Then it initializes the HL pointer to the beginning of the memory, and it uses a loop to fill the memory with values 1 to 8. Inside the loop, it increases the value of the L register (memory address) by 1 and stores the value of L to the memory address pointed by HL. It also copies the value of L to the accumulator A and compares it with the value of B (last index). If the value of A is less than B, it jumps back to the loop to continue filling the memory with the remaining values.

In the second part, the code initializes variables for the binary search algorithm, including the lower ( **register B** ) and upper bounds ( **register C** ) of the memory, the value to search ( **register D** ) for, and the memory address ( **register L** ) where the result will be stored.

Here **MVI** stands for Move Immediate i.e., setting hard coded value to registers.

MVIB, 0_; Set B as the lower bound index (0)_

MVIC, 8_; Set C as the upper bound index (8)_

MVID, 5_; Set D as the value to search for_

MVIL, 9_; Set L as the memory address where the result will be stored_

MVIM, 225_; Set the initial value of the result to 225, which means not found_

It then uses a loop to perform the binary search algorithm. Inside the loop, it calculates the middle index between the upper and lower bounds and stores it in the **register E**.

_; Calculate the middle index between the upper and lower bounds_

ADD C_; Add the value of C to A (high + low)_

RAR_; Shift A to the right (divide by 2)_

ADD B_; Add the value of B to A (middle index)_

RAR

MOV E, A_; Move the middle index to E_

Here's a step-by-step breakdown of what's happening:

1. **ADD C** : The value of register C is added to register A. Since A is being used as an accumulator, this operation effectively computes the sum of the high and low elements of the array.

2. **RAR** : The contents of register A are shifted one bit to the right. This is equivalent to dividing the accumulator by 2 since each bit represents a power of 2.

3. **ADD B** : The value of register B is added to register A. This effectively computes the sum of the high, middle, and low elements of the array.

4. **RAR** : The contents of register A are shifted one bit to the right again.

5. **MOV E, A** : The contents of register A are moved to register E. This is the result of the computation, representing the middle index of the array.

It gets the value of the middle index from memory into accumulator.

_; Get the value of the middle index from memory_

MOV L, E_; Move the memory address to L (middle index)_

MOV A, M_; Move the value at the memory address pointed by L to A_

And compares it with the value to search for i.e., with **register D**.

_; Compare the value at the middle index with the value to search for_

CMP D

JZ equals_; If A is equal to D, jump to equals_

JMless_; If A is less than D, jump to less_

JPgreater_; If A is greater than D, jump to greater_

If the value is found, it jumps to **equals** label to stores the middle index in memory and exits the loop.

equals: MVIL, 9_; Set L as the memory address where the result will be stored_

MOV M, E_; Move the middle index to the memory address pointed by L_

JMP exit_; Jump to exit_

If the value is less than the value to search for, it jumps to **less** label to updates the lower bound and jumps back to the loop.

less: MOV A, E_; Move the middle index to A_

INRA_; Increase the value of A by 1_

MOV B, A_; Move the new value of A to B (new lower bound)_

JMP while_; Jump to while_

If the value is greater than the value to search for, it jumps to **greater** label to updates the upper bound and jumps back to the loop. Finally, it halts the execution of the program.

greater: MOV A, E_; Move the middle index to A_

DCRA_; Increase the value of A by 1_

MOV C, A_; Move the new value of A to C (new upper bound)_

JMP while_; Jump to while_

exit: HLT _; Halt the execution of the program_

Overall, this code initializes memory with values 1 to 8 and performs a binary search algorithm to search for a specific value within the memory.

**Execution:**

The provided assembly code is designed to demonstrate the binary search algorithm in the 8085 microprocessor architecture. To execute this code, we can use the GNUSim8085 simulator, which is a free and open-source simulator that provides a graphical interface to emulate the behavior of an 8085 microprocessor.

The GNUSim8085 simulator allows us to load, assemble, and execute the provided assembly code. It also provides several features to interact with the code and the 8085 microprocessor during the simulation.

In this code, the first section initializes an array in the memory, fills it with values 1 to 8, and sets up variables for binary search. The second section contains the binary search algorithm.

During the execution of the code in GNUSim8085, the simulator will display the current state of the 8085 microprocessor. The registers, memory, and other components of the 8085 microprocessor will be displayed on the screen, allowing the user to monitor the behavior of the program at each step.

To execute the code, we can load it into the GNUSim8085 simulator and assemble it to generate machine code. Then, we can step through the program, one instruction at a time, and monitor the state of the microprocessor to ensure that the code is executing as intended.

The GNUSim8085 simulator also provides the ability to modify the contents of memory and registers during the simulation, allowing for more advanced debugging and testing of the code. Overall, the GNUSim8085 simulator is a powerful tool for working with the 8085 microprocessor architecture and allows for in-depth analysis of the behavior of programs running on this architecture.

![](RackMultipart20230426-1-h5mqso_html_4288ea30424f6c42.png)

![](RackMultipart20230426-1-h5mqso_html_7fe48588f1795efd.png)

As we were searching for the number 5, as expected from the program, the address of the number 5 i.e., 0005H has been stored at the memory location 0009H. Attaching the screenshot of the memory.

![](RackMultipart20230426-1-h5mqso_html_52b78856d767051b.jpg)

From the address 0001H to 0008H i.e., blue border are the memory locations of the array we are trying to do binary search. Similarly, address 0009H is the memory where the address of the target is stored. As expected, address value 5 is stored at 0009H which is the address of the number 5.

# **Testing**

1. **Overview**

The following documentation outlines the testing plan for the binary search algorithm implemented in assembly code for the GNU sim 8085 simulator. The testing plan includes the objectives, scope, test cases, and expected results of the testing process.

2. **Objectives**

The objectives of the testing process are to:

- Verify the correctness of the binary search algorithm.

- Ensure that the algorithm handles all edge cases and invalid inputs correctly.

- Confirm that the output generated by the algorithm is accurate and consistent.

3. **Scope**

The testing process will focus on the binary search algorithm implemented in the following lines of assembly code:

- MVI B, 0

- MVI C, 8

- MVI D, 5

- MVI L, 9

- MVI M, 225

- while:

- equals:

- less:

- greater:

- exit:

The test cases will cover the following scenarios:

- Searching for a value that exists in the array.

- Searching for a value that does not exist in the array.

- Searching for a value in an empty array.

- Searching for a value in an array with only one element.

- Searching for a value in an array with even and odd number of elements.

- Searching for a value in an array with odd number of elements.

4. **Test Cases**

4.1. Searching for a value that exists in the array.

- Input: array [1, 3, 5, 7, 9, 11, 13, 15], value to search for 7.

- Expected output: The index of the value in the array is 3.

![](RackMultipart20230426-1-h5mqso_html_b6989dfa1f47d082.jpg)

![](RackMultipart20230426-1-h5mqso_html_eb254a611e27a7a.jpg)
 As you could see, the **register D** has been set to 7 as per the test case, and the memory locations from 0000H to 0007H are stored with the test case array and as expected, memory location 0009H has the value equivalent to the index value of 7 i.e., 3.

4.2. Searching for a value that does not exist in the array.

- Input: array [1, 3, 5, 7, 9, 11, 13, 15], value to search for 6.

- Expected output: The value is not found, and the result should be 225.

![](RackMultipart20230426-1-h5mqso_html_754e7c5fa8b0c84.jpg)

![](RackMultipart20230426-1-h5mqso_html_7eb69b5ad145a027.jpg)

As you could see, the **register D** has been set to 6 as per the test case, and the memory locations from 0000H to 0007H are stored with the test case array and as expected, memory location 0009H has the value 225 as 6 does not exist in the memory.

4.3. Searching for a value in an empty array.

- Input: empty array, value to search for 1.

- Expected output: The value is not found, and the result should be 225.

![](RackMultipart20230426-1-h5mqso_html_3dc50dec998315f4.jpg)

![](RackMultipart20230426-1-h5mqso_html_875796c3755b86bf.jpg)

As you could see, the **register D** has been set to 1 as per the test case, and the memory locations from 0000H to 0007H are empty as per the test case and as expected, memory location 0009H has the value 225 as memory location is empty so 1 does not exist in the memory.

4.4. Searching for a value in an array with only one element.

- Input: array [1], value to search for 1.

- Expected output: The index of the value in the array is 0.

![](RackMultipart20230426-1-h5mqso_html_98f03194ab7dd713.jpg)

![](RackMultipart20230426-1-h5mqso_html_ab8309f43dc21c19.jpg)

As you could see, the **register D** has been set to 0 as per the test case there is only one element in the array([1]) which is at the zeroth index address, and the memory locations from 0000H to 0007H are empty as per the test case and as expected, memory location 0009H has the value 0 as memory location 0009H has the value equivalent to the index value of 1 i.e., 0.

4.5. Searching for a value in an array with even and odd number of elements.

- Input: array [1, 3, 5, 7, 9], value to search for 5.

- Expected output: The index of the value in the array is 2.

![](RackMultipart20230426-1-h5mqso_html_952f2fc2f5b888a5.jpg)

![](RackMultipart20230426-1-h5mqso_html_97a24983eb6a0c7f.jpg)

As you could see, the **register D** has been set to 5 as per the test case, and the memory locations from 0000H to 0004H are stored with the test case array and as expected, memory location 0009H has the value equivalent to the index value of 5 i.e., 2.

4.5 Searching for a value in an array with odd number of elements.

- Input: array [1, 3, 5, 7, 9, 11], value to search for 11.

- Expected output: The index of the value in the array is 5.

![](RackMultipart20230426-1-h5mqso_html_20d0dfeb800f79b4.jpg)

![](RackMultipart20230426-1-h5mqso_html_eb8bdd89d1631883.jpg)

As you could see, the **register D** has been set to 11 as per the test case, and the memory locations from 0000H to 0005H are stored with the test case array and as expected, memory location 0009H has the value equivalent to the index value of 11 i.e., 5.

5 **. Conclusion**

The testing plan for the binary search algorithm implemented in assembly code for the GNU sim 8085 simulator has been successfully completed. All test cases were executed, and the results were consistent with the expected output. The algorithm is verified to be correct and efficient in handling edge cases and invalid inputs.

**References**

1. GNU Sim 8085: GNUSim8085 (Version 1.4.1) [Computer software]. (2018, July 30). Retrieved from [https://github.com/GNUSim8085/GNUSim8085](https://github.com/GNUSim8085/GNUSim8085)

2. Binary Search in Java: Vincent Abba, I. (2023, March 08). Algorithm & Example. FreeCodeCamp. [https://www.freecodecamp.org/news/binary-search-in-java-algorithm-example/](https://www.freecodecamp.org/news/binary-search-in-java-algorithm-example/)

3. Binary Search in Detail: Labuladong. (n.d.). In Algorithmic Thinking: A Problem-Based Introduction. Retrieved from [https://labuladong.gitbook.io/algo-en/iii.-algorithmic-thinking/detailedbinarysearch](https://labuladong.gitbook.io/algo-en/iii.-algorithmic-thinking/detailedbinarysearch)

4. How to Write Pseudocode: Macharia, N. (2018, July 2).: A Beginner's Guide. Medium. Retrieved from [https://medium.com/@ngunyimacharia/how-to-write-pseudocode-a-beginners-guide-29956242698](https://medium.com/@ngunyimacharia/how-to-write-pseudocode-a-beginners-guide-29956242698)

5. Programming in 8085: JavaTpoint. (n.d.). Programming in 8085. Retrieved from [https://www.javatpoint.com/programming-in-8085](https://www.javatpoint.com/programming-in-8085)

6. Elprocus. "8085 Microprocessor Architecture." Retrieved from[https://www.elprocus.com/8085-microprocessor-architecture/](https://www.elprocus.com/8085-microprocessor-architecture/)

7. Gaonkar, R.S. (2002). Microprocessor Architecture, Programming, and Applications with the 8085. Penram International Publishing.