
# Creating Functions
```
#!/bin/sh

#Define your function here
Hello () {
   echo "Hello World"
}

#Invoke your function
Hello
```
Output: Hello World

# Pass parameter to Functions
```
#!/bin/sh

# Define your function here
Hello () {
   echo "Hello World $1 $2"
}

# Invoke your function
Hello Zara Ali
```
Output : Hello World Zara Ali

# Return values from function
```
#!/bin/sh

# Define your function here
Hello () {
   echo "Hello World $1 $2"
   return 10
}

# Invoke your function
Hello Zara Ali

# Capture value returnd by last command
ret=$?

echo "Return value is $ret"
```
Output : Hello World Zara Ali
Return value is 10


# Nested Functions
```
#!/bin/sh

# Calling one function from another
number_one () {
   echo "This is the first function speaking..."
   number_two
}

number_two () {
   echo "This is now the second function speaking..."
}

# Calling function one.
number_one
```
Output: This is the first function speaking...
This is now the second function speaking...
