#!/bin/bash  #he standard shebang line that instructs the system to execute the script using the Bash shell interpreter.
#!/bin/bash -x shebang line that enables debugging mode in Bash, printing each command to the terminal before it is executed.
#bash -r blackhatbash1.sh A commented-out command that, if active, would run the specified script in a restricted Bash shell environment.
bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo &{OSTYPE}
ps -e -f
ps -ef
df --human-readable