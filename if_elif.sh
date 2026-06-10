#!/bin/bash
# Specify the script interpreter as Bash
USER_INPUT="${1}"
# Assign the first command-line argument to USER_INPUT

if [[ -z "${USER_INPUT}" ]]; then
# Check if the USER_INPUT variable is empty
    echo "You must provide an argument!"
    # Print an error message to the terminal
    exit 1
    # Terminate the script execution with a failure status
fi
# End the first conditional block

if [[ -f "${USER_INPUT}" ]]; then
# Check if the input path points to a regular file
    echo "${USER_INPUT} is a file."
    # Print that the input is a file
elif [[ -d "${USER_INPUT}" ]]; then
# Check if the input path points to a directory
    echo "${USER_INPUT} is a directory."
    # Print that the input is a directory
else
# Execute if the input is neither a file nor a directory
    echo "${USER_INPUT} is not a file or a directory."
    # Print that the path is not a file or directory
fi
# End the second conditional block