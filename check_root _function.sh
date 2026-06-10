#!/bin/bash
# Specify the script interpreter as Bash

# This function checks if the current user ID equals zero.
check_if_root(){
# Define a function named check_if_root
if [[ "${EUID}" -eq "0" ]]; then
# Check if the Effective User ID equals zero (root)
    return 0
    # Return a success status code if user is root
else
# Execute if the user ID is not zero
    return 1
    # Return a failure status code if user is not root
fi
# End the conditional block inside the function
}
# End of the check_if_root function definition

if check_if_root; then
# Call the function and check if it returns success
    echo "User is root!"
    # Print that the current user is root
else
# Execute if the function returns failure
    echo "User is not root!"
    # Print that the current user is not root
fi
# End the main conditional block