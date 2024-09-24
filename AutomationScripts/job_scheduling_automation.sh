#!/bin/bash

# Function to validate number and format of parameters
validate_params() {
  if [ "$#" -lt 2 ]; then
    echo "Error: Insufficient number of parameters."
    echo "Usage: $0 <param1> <param2>"
    exit 1
  fi

  # Check if first parameter is an integer
  if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: Parameter 1 must be an integer."
    exit 1
  fi

  # Check if second parameter is a valid string (alphabetic)
  if ! [[ "$2" =~ ^[a-zA-Z]+$ ]]; then
    echo "Error: Parameter 2 must be a string."
    exit 1
  fi

  echo "Parameters are valid."
}

# Function to check if the current day is a weekday (Mon-Fri)
is_weekday() {
  day_of_week=$(date +%u)  # 1 = Monday, 5 = Friday, 6-7 = Weekend
  if [ "$day_of_week" -ge 1 ] && [ "$day_of_week" -le 5 ]; then
    return 0  # Weekday
  else
    return 1  # Weekend
  fi
}

# Function to run job with timeout
run_job_with_timeout() {
  timeout=10  # Timeout value in seconds

  # Run the job with timeout
  echo "Running job..."
  if timeout $timeout ./my_job_script.sh "$@"; then
    echo "Job completed successfully."
  else
    echo "Job timed out or failed to execute."
  fi
}

# Main script
if is_weekday; then
  echo "Today is a weekday. Proceeding with the job."

  # Validate parameters
  validate_params "$@"

  # Run job with timeout
  run_job_with_timeout "$@"
else
  echo "Today is not a weekday. Job will not run."
  exit 0
fi

