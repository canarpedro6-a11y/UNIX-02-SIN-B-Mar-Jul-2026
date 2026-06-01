#!/bin/bash
PUBLISHER="No starch Press"
print_name (){
    local name 
    name="black hat bash"
    echo "${name} by ${PUBLISHER}"
}
print_name
echo "variable ${name} will not be printed because it is a local variable"

#Global Variable: Defined outside functions; accessible anywhere in the script.
#Local Variable: Defined with the word local inside a function; only exists there.
#Invoke Function: Called by writing only its name (no parentheses), just like a regular command.