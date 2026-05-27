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

exit #Closes the current subshell session created by the newgrp command, reverting back to the previous primary group environment.
id -gn #Prints the name of the effective primary group to confirm it has reverted to the original group prior to running newgrp. 

echo "PID del shell actual: $$" #Prints the Process ID (PID) of the active shell session before changing groups.
newgrp desarolladores #Opens a new subshell session with the effective primary group set to "desarolladores".
echo "PID dentro de newgrp: $$" #Prints the Process ID inside the new session, which will match the original PID because newgrp replaces the current shell image using exec.

sudo groupadd grupo_restringido #Creates a new system group named "grupo_restringido" using administrative privileges.
sudo gpasswd grupo_restringido #Sets a password for the "grupo_restringido" group, allowing users who are not members to temporarily join it.
newgrp grupo_restringido #Switches the user's current effective primary group to "grupo_restringido", prompting for the group password if the user is not an explicit member.
id -gn #Prints the name of the active effective primary group to confirm the switch to "grupo_restringido" was successful.