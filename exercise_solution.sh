#!/bin/bash
#!/bin/bash

# 1. Throw an error if the arguments are missing and exit using the right exit code.
# The "$#" variable holds the number of arguments passed to the script.
if [ "$#" -ne 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <name> <target_domain>"
    exit 1
fi

# Assign arguments to variables for readability
NAME=$1
DOMAIN=$2
CSV_FILE="ping_results.csv"

# 2. Ping the domain and return an indication of whether the ping was successful.
# -c 1 limits the ping to a single request. 
# > /dev/null 2>&1 suppresses the standard output and errors to keep the terminal clean.
if ping -c 1 "$DOMAIN" > /dev/null 2>&1; then
    RESULT="success"
    echo "Ping to $DOMAIN was successful."
else
    RESULT="failure"
    echo "Ping to $DOMAIN failed."
fi

# Get the current date and time
CURRENT_TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

# 3. Write the results to a CSV file.
# Using '>>' appends the data to the file so previous records are not overwritten.
echo "$NAME,$DOMAIN,$RESULT,$CURRENT_TIMESTAMP" >> "$CSV_FILE"

echo "Results logged to $CSV_FILE."