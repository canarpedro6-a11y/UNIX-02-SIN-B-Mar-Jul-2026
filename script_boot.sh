# cd is whn we need change of the directory
# cd /home/codespace Change the current directory to the user's specific absolute path within the "home" folder.
# cd ~ Change the current directory to the home directory of the user who is logged in.
# cd %HOME : Windows command (CMD) that changes the user's home directory using an environment variable.

# mkdir proyecto Create a new folder or directory called "project" in the current location.
# cd proyecto/ Access or enter the directory called "project" to start working within it.
# ls -lai It displays a detailed list of all files (including hidden ones), with their permissions, size, and system identifiers (inodes).
#total 12
#925541 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:33 .
#918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:33 ..

# stat . Help me get the complete information for a file.
 
 # mkdir -p /tmp/preuba/sub1 /tmp/prueba/sub2 Creates directories recursively, generating parent folders if they do not exist, to establish the "sub1" and "sub2" paths simultaneously.
 # stat /tmp/prueba Displays detailed information and status of a file or directory, including size, permissions, access and creation dates, and system identifiers.
 # man mkdir Open the mkdir command user manual to view its complete documentation, available options, and usage syntax.

# pwd where i am
# whoami a person whith the sesion connect
# ls What question is here?
# ls -l What question is here?
# ls -la What question is here?
# ls -lh What question is here?

# ls -lt Sorts the long list of files by modification date, showing the most recent ones first.

# ls / List the contents of the root directory

# ls /etc | head -20 List the files in the configuration folder (/etc) and, using a pipe, display only the first 20 lines.
# ls /dev | head -20 List the system device files (/dev) and limit the output to the first 20 items found.

# ls -la Displays a detailed list of all files in the current directory, including permissions, owners, and hidden files.
