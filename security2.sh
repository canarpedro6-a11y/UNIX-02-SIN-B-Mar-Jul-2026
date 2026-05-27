id #Displays the real and effective user and group IDs for the current user.
id -gn #Prints only the effective primary group name of the current user.
touch ~/test_grupo_heredado.txt #Creates an empty text file named test_grupo_heredado.txt in the user's home directory
ls -la ~/test_grupo_heredado.txt #Displays detailed information (including permissions and ownership) for the newly created file in a long-list format, including hidden aspects.

id -gn #Prints the effective primary group name again (likely to check if the group changed after a previous operation).
touch ~/antes_de_newgrp.txt #Creates a second empty text file named antes_de_newgrp.txt in the user's home directory.
ls -la ~/antes_de_newgrp.txt #Displays detailed information and file permissions for the second file to compare its group ownership with the first one.

newgrp desarolladores #Changes the current effective primary group ID of the user to the "desarolladores" group.
id -gn #Prints the name of the new effective primary group, which should now display "desarolladores".

touch ~/dentro_de_newgrp.txt #Creates an empty text file named
ls -la ~/dentro_de_newgrp.txt #Displays detailed permissions and ownership info for the newly created file to verify it belongs to the "desarolladores" group.
mkdir -p ~/proyecto_dev/src #Creates the proyecto_dev directory and its nested src subdirectory simultaneously, skipping errors if they already exist.
ls -la ~/ #Lists all contents, hidden files, permissions, and ownership details for everything inside the home directory.

