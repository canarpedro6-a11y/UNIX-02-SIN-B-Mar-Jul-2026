#!/bin/bash
# Shebang: Defines the interpreter used to execute the script (Bash environment).

# Argument assignment: Captures the first parameter passed to the script (the remote branch name).
BRANCH_TO_EVALUATE=$1

# Condition: Checks if the branch name argument is empty (zero length).
if [ -z "$BRANCH_TO_EVALUATE" ]; then
    # Output: Prints an error message to the terminal if no branch name is provided.
    echo "Error: You must provide the name of the branch to evaluate."
    # Output: Prints the correct usage format for the user.
    echo "Usage: ./script.sh <branch_name>"
    # Exit command: Terminates the script execution immediately with an error code (1).
    exit 1
# End of the if condition.
fi

# Environment variable: Sets the Time Zone strictly to Ecuador (UTC-5) for precise date calculations.
export TZ="America/Guayaquil"

# Variable initialization: Sets the starting score to the maximum possible value (100 points).
SCORE=100

# Loop definition: Iterates through the list of files in the specified remote branch.
# 'git ls-tree' lists the contents, '-r' does it recursively, '--name-only' outputs just the paths.
for FILE in $(git ls-tree -r --name-only "$BRANCH_TO_EVALUATE"); do

    # Command substitution: Extracts the specific commit date of the current file in the given branch.
    # '%H' extracts the hour (00-23) and '%u' extracts the day of the week (1-7, where 1 is Monday).
    FILE_DATE=$(git log -1 --date=format:"%H|%u" --format="%ad" "$BRANCH_TO_EVALUATE" -- "$FILE" 2>/dev/null)

    # Condition: Checks if the date extraction was successful (the resulting string is not empty).
    if [ -n "$FILE_DATE" ]; then
        # String parsing: Extracts the first field (the hour) separated by the pipe character '|'.
        HOUR=$(echo "$FILE_DATE" | cut -d'|' -f1)
        # String parsing: Extracts the second field (the day of the week) separated by the pipe character '|'.
        DAY=$(echo "$FILE_DATE" | cut -d'|' -f2)

        # Arithmetic operation: Converts the extracted hour to a base-10 integer to prevent octal syntax errors (e.g., '08').
        NUMERIC_HOUR=$((10#$HOUR))

        # Condition: Evaluates if the extracted day is NOT Monday (1) AND NOT Wednesday (3).
        if [ "$DAY" -ne 1 ] && [ "$DAY" -ne 3 ]; then
            # Arithmetic operation: Subtracts 2 points from the total score for unauthorized days.
            SCORE=$((SCORE - 2))
        # End of the day validation block.
        fi

        # Condition: Evaluates if the hour is strictly before 7 AM (07:00) OR strictly after 1 PM (13:00).
        if [ "$NUMERIC_HOUR" -lt 7 ] || [ "$NUMERIC_HOUR" -gt 13 ]; then
            # Arithmetic operation: Subtracts 2 points from the total score for out-of-bounds time.
            SCORE=$((SCORE - 2))
        # End of the time validation block.
        fi
    # End of the date existence check.
    fi

    # Command substitution: Extracts the raw textual content of the file from the remote branch.
    FILE_CONTENT=$(git show "$BRANCH_TO_EVALUATE:$FILE" 2>/dev/null)

    # Condition: Uses grep to search the file content for Spanish-specific characters (á, é, í, ó, ú, ñ, ¿, ¡) case-insensitively.
    if echo "$FILE_CONTENT" | grep -iqE '[áéíóúñ¿¡]'; then
         # Arithmetic operation: Subtracts 5 points if Spanish language traits are found.
         SCORE=$((SCORE - 5))
    # Condition: Uses grep to check if the file DOES NOT contain common English vocabulary or technical keywords.
    elif ! echo "$FILE_CONTENT" | grep -iqE '\b(add|fix|update|feat|remove|refactor|doc|test|the|to|and|in|of|for|with)\b'; then
         # Arithmetic operation: Subtracts 2 points if no English keywords are detected in the file.
         SCORE=$((SCORE - 2))
    # End of the linguistic validation block.
    fi

# End of the main loop iterating over all branch files.
done

# Condition: Checks if the final calculated score has fallen below zero due to multiple penalties.
if [ "$SCORE" -lt 0 ]; then
    # Variable assignment: Resets the score to a hard floor of 0 to prevent negative grades.
    SCORE=0
# End of the negative score validation block.
fi

# Standard output: Prints the final calculated grade string to the terminal interface.
echo "Final score for branch '$BRANCH_TO_EVALUATE': $SCORE/100"