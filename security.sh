id #A command that displays the real and effective user and group IDs of the current user.
cat /etc/passwd | head -10 #A command pipeline that reads the system's user account database and outputs only the first ten lines of that file.

groups #A command that prints the names of the primary and supplementary groups the current user belongs to.
groups $USER #A command that specifically identifies and lists all group memberships for the user currently stored in the $USER environment variable.

id -u #A command that prints the numeric effective user ID of the current user.
id -g #A command that prints the numeric effective group ID of the current user.
id -G #A command that prints all numeric group IDs (including supplementary groups) that the current user belongs to.

cat /etc/gshadow #A command that displays the secure group account information, which contains encrypted group passwords and administrative details.
cat /etc/group | grep codespace #does not exist

mkdir ~/proyecto_unix/ #A command that creates a new directory named "proyecto_unix" within the current user's home directory.
ls -la ~/proyecto_unix/ #A command that lists all files and subdirectories inside "proyecto_unix" in a long format, including hidden files and detailed permission information.
 
