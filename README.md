Shell script (batch program) reads an input file line by line, do the task accordingly and writes the result to an output file. Script is dynamic, meaning that there can be various numbers of line in the input file and each line may require a different task. Also names of the input and output files are to be dynamic as well. Meaning that those variables will be parameters of the script. An example input and output file has been given in appendix. 

The separator between arguments could be space or tab and it could be only one or more than one. Script is able to handle different combinations of both. In the above example, more than one tab is used to make it more readable to the user. 

Also, consider the empty lines between numbers, How should they be handled? Should they be preserved in the output file or erased entirely?

A task to be done on each line can be either base conversion or one of the arithmetic operations ( + , - , * , / , % ).

Base conversion can be between bases 2, 10 and 16.

In arithmetic operations only unsigned binary operands will be used, meaning every base 2 number in the input file will be positive. For arithmetic operations you have to do the operation manually in code and NOT use a system command and etc. Write the answer to the output file in the original number base, and if the result is in binary (2) or in hexadecimal (16), write down if the answer is positive or negative in parenthesis, as shown in above example and in appendix.

For division and multiplication operations, the divisor and multiplier will be power of 2 for base 2 and power of 16 for base 16. Script has to take two mandatory arguments, one is the input file and the other is output file.
