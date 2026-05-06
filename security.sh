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
 
sudo groupadd desarolladores #crete a simple group
sudo groupadd -g 2000 operaciones 
sudo groupadd --system servicios_web #group of system

 grep "desarolladores\|operaciones\|servicios_web" /etc/group #show the groups
 grep -E "desarolladores|operaciones|servicios_web" /etc/group #show the groups

 grep "GID_MIN|GID_MAX\|SYS_GID" /etc/login.defs #configuration file to display the range of Group IDs (GIDs) used for regular and system accounts.

 addgroup diseno #create a new group
addgroup --gid 2100 marketing #add a new group
addgroup --system cache_web #add a new group
grep "diseno\|marketing\|cache_web" /etc/group #verify the groups                                              

groups #in what group i am
id #in what group i am
sudo usermod -aG desarolladores root #we change the final part because the user don´t have nothing for our user root 
ssudo usermod -aG diseno root #we change the final part because the user don´t have nothing for our user root

grep -E "desarolladores|diseno" /etc/group
sudo adduser root marketing #add new group in the user
id root #who is my id
grep root /etc/group #separate the groups

sudo groupadd grupo_temporal #Creates a new group named "grupo_temporal" in the system using administrative privileges.
usermod -aG grupo_temporal root #Appends the user "root" to the "grupo_temporal" group without removing them from their existing groups.
id root #Displays the user and group IDs (UID and GIDs) for the "root" account to verify its current memberships
usermod -G desarolladores root #Sets "desarrolladores" as the only secondary group for "root," removing them from all other secondary groups like "grupo_temporal."
                                                                               
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts} #Creates a main directory named lab_chgrp in the home folder and simultaneously generates three subdirectories inside it:
ouch ~/lab_chgrp/proyectos/app.py  #Attempts to create a file named app.py, but contains a typo (ouch instead of touch), which will result in a "command not found" error.
touch ~/lab_chgrp/proyectos/config.json #Creates an empty configuration file named config.json within the proyectos subdirectory.
ouch ~/lab_chgrp/reportes/inforne.txt #Repeats the typo ouch while attempting to create a text file named informe.txt inside the reportes subdirectory.
touch ~/lab_chgrp/scripts/deploy.sh   #Creates an empty shell script file named deploy.sh inside the scripts subdirectory.


