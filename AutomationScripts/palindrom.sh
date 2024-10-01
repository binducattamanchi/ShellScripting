#!bin/bash


# Function to check if the input is a palindrome
check_palindrome() {
    input=$1
    length=${#input}  # Get the length of the input
    reverse=""

    # Reverse the input string/number
    for (( i=$length-1; i>=0; i-- ))
    do
        reverse="$reverse${input:$i:1}"
    done

    # Check if the input is equal to the reversed version
    if [ "$input" == "$reverse" ]; then
        echo "The input '$input' is a palindrome."
    else
        echo "The input '$input' is not a palindrome."
    fi
}

# Take user input
echo "Enter a number or string to check if it's a palindrome:"
read user_input

# Call the function
check_palindrome "$user_input"
