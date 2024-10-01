# Basics

* Types of Shells - 
   - Bash/Bourne Again Shell: This is the most common shell available on all Linux and based systems. It is open source and freeware.
   - CSH or C Shell: This Shell scripting program uses the C programming’s shell syntax and it’s almost similar to C.
   - KSH or Korn Shell: Korn is a Unix based Shell scripting program, initially based on the Bash Shell Scripting. This shell is quite advanced and it’s a high level programming language.
   - TCSH: There is no specific full form of TCSH. It is as it is. TCSH is an advanced version of Berkeley Unix C shell. It again supports C style syntax.

* Shebang line - Shebang line at the top of each script determines the location of the engine which is to be used in order to execute the script.
   #!/bin/sh or #!/bin/bash at the beginning of every script tells which shell to use. 
   - Interactive shell - /bin/bash and /bin/sh  
   - Non-interactive shell - /sbin/nologin shell

* CronTab: Crontab stands for cron table because it uses the job scheduler cron to execute tasks. The crontab is a list of commands that you want to run on a regular schedule, and also the name of the command used to manage that list. 
The five fields contain information on when to execute the command .

minute(0-59)
hour(0-23)
day(1-31) 
month(1-12)
day of the week(0-6, Sunday = 0).

# Basic Commands

Screenshot 2021-06-27 at 11.55.27 PM<img width="882" alt="Screenshot 2021-06-27 at 11 55 27 PM" src="https://user-images.githubusercontent.com/32897934/123555411-34c68a80-d7a3-11eb-931d-06f5b58c74f2.png">

Screenshot 2021-06-28 at 12.18.49 PM<img width="574" alt="Screenshot 2021-06-28 at 12 18 49 PM" src="https://user-images.githubusercontent.com/32897934/123596807-3f6b3900-d810-11eb-9981-ab3e5d5b60f8.png">


# File Permissions
"+" : Adds the designated permission(s) to a file or directory.
"-" : Removes the designated permission(s) from a file or directory.
"=" : Sets the designated permission(s).
Additional permissions are given to programs via a mechanism known as the Set User ID (SUID) and Set Group ID (SGID) bits.
Screenshot 2021-06-28 at 1.29.31 PM<img width="727" alt="Screenshot 2021-06-28 at 1 29 31 PM" src="https://user-images.githubusercontent.com/32897934/123601247-126d5500-d815-11eb-8de8-b1cc07d9e345.png">

Screenshot 2021-06-28 at 1.27.33 PM<img width="724" alt="Screenshot 2021-06-28 at 1 27 33 PM" src="https://user-images.githubusercontent.com/32897934/123601258-14cfaf00-d815-11eb-81cc-600e85e83154.png">

# Basic Operators
## Arithmetic Operators
Operator	Description	Example
+ (Addition): Adds values on either side of the operator	`expr $a + $b` will give 30
- (Subtraction): Subtracts right hand operand from left hand operand	`expr $a - $b` will give -10
* (Multiplication): Multiplies values on either side of the operator	`expr $a \* $b` will give 200
/ (Division): Divides left hand operand by right hand operand	`expr $b / $a` will give 2
% (Modulus): Divides left hand operand by right hand operand and returns remainder	`expr $b % $a` will give 0
= (Assignment): Assigns right operand in left operand	a = $b would assign value of b into a
== (Equality): Compares two numbers, if both are same then returns true.	[ $a == $b ] would return false.
!= (Not Equality): Compares two numbers, if both are different then returns true.	[ $a != $b ] would return true.

## Relational Operators
Operator	Description	Example
-eq: Checks if the value of two operands are equal or not; if yes, then the condition becomes true.	[ $a -eq $b ] is not true.
-ne: Checks if the value of two operands are equal or not; if values are not equal, then the condition becomes true.	[ $a -ne $b ] is true.
-gt: Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.	[ $a -gt $b ] is not true.
-lt: Checks if the value of left operand is less than the value of right operand; if yes, then the condition becomes true.	[ $a -lt $b ] is true.
-ge: Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true.	[ $a -ge $b ] is not true.
-le: Checks if the value of left operand is less than or equal to the value of right operand; if yes, then the condition becomes true.	[ $a -le $b ] is true.

## Boolean Operators
Operator	Description	Example
!: This is logical negation. This inverts a true condition into false and vice versa.	[ ! false ] is true.
-o: This is logical OR. If one of the operands is true, then the condition becomes true.	[ $a -lt 20 -o $b -gt 100 ] is true.
-a: This is logical AND. If both the operands are true, then the condition becomes true otherwise false.	[ $a -lt 20 -a $b -gt 100 ] is false

## String Operators
Operator	Description	Example
=: Checks if the value of two operands are equal or not; if yes, then the condition becomes true.	[ $a = $b ] is not true.
!=: Checks if the value of two operands are equal or not; if values are not equal then the condition becomes true.	[ $a != $b ] is true.
-z: Checks if the given string operand size is zero; if it is zero length, then it returns true.	[ -z $a ] is not true.
-n: Checks if the given string operand size is non-zero; if it is nonzero length, then it returns true.	[ -n $a ] is not false.
str: Checks if str is not the empty string; if it is empty, then it returns false.	[ $a ] is not false.

## File operators
Operator	Description	Example
-b file	Checks if file is a block special file; if yes, then the condition becomes true.	[ -b $file ] is false.
-c file	Checks if file is a character special file; if yes, then the condition becomes true.	[ -c $file ] is false.
-d file	Checks if file is a directory; if yes, then the condition becomes true.	[ -d $file ] is not true.
-f file	Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true.	[ -f $file ] is true.
-g file	Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.	[ -g $file ] is false.
-k file	Checks if file has its sticky bit set; if yes, then the condition becomes true.	[ -k $file ] is false.
-p file	Checks if file is a named pipe; if yes, then the condition becomes true.	[ -p $file ] is false.
-t file	Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.	[ -t $file ] is false.
-u file	Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.	[ -u $file ] is false.
-r file	Checks if file is readable; if yes, then the condition becomes true.	[ -r $file ] is true.
-w file	Checks if file is writable; if yes, then the condition becomes true.	[ -w $file ] is true.
-x file	Checks if file is executable; if yes, then the condition becomes true.	[ -x $file ] is true.
-s file	Checks if file has size greater than 0; if yes, then condition becomes true.	[ -s $file ] is true.
-e file	Checks if file exists; is true even if file is a directory but exists.	[ -e $file ] is true.

