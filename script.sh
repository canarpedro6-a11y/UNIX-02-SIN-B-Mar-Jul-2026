ls -a      : Shows all files and folders in the current directory, including hidden ones (those that begin with a dot).
ls -all   Displays all files (including hidden ones) in a detailed list format, with information on permissions, size, and date.
ls -a /  Displays all files and folders in the system's root directory, including hidden items.

ls -l   Delete a directory only if it is completely empty.
ls -l -a -h  Borra un directorio y todo su contenido (archivos y subdirectorios) de forma recursiva.
ls -ah   Borra un directorio de forma recursiva y forzada, ignorando archivos inexistentes y sin solicitar confirmación.

rm -- -rf   Permanently deletes a specific file that is literally called -rf
rmdir -- -rf  Deletes an empty directory that has the literal name -rf.

ls --help do a litle resmuen only in one part of the screm 
man ls open the manual of usse 

 --depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the
           histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.

chmod +x script.sh  Grants execution permissions to all user levels (owner, group, and others).
chmod u+x script.sh  Grants execution permission exclusively to the file owner.
chmod o-r script.sh   He revoked read permission for users who do not belong to the owner's group ("others").
chmod u+rw,go-rwx script.sh  #Assign read and write permissions to the owner, while removing any access (read, write and execute) to the group and third parties.

sduo echo "hola" > /etc/archivo_protegido #this command it can be done because we have only one sudo for one part and we need a second sudo for the other part

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #in this command you create one file that inside is write hello but in terminal don´t show but create the archive
echo "hola" | sudo tee /etc/archivo_protegido #in this command sample the word hello in the teminal

sudo sh -c 'echo "chao" >> /etc/archivo_protegido  # we use this command add content in a archive that already exist
sudo su - # we use only in necessary cases because can do differents commands can bes broke the server

echo '$HOME'  #is a variable that show on the same in the terminal
echo "$HOME"  #sample directory

echo '#!/bin/sh' > hola.sh #Create the file (or overwrite its contents) by inserting the header line that indicates which command interpreter to use.
echo 'echo "hola desde mi primer script"' >> hola.sh # Add to the end of the existing file the command needed to print a greeting on the screen.
cat hola.sh #Display the complete contents of the file you just created in the terminal.
./hola.sh #Display the complete contents of the file you just created in the terminal.

ls -l hola.sh #It displays the file details (permissions, owner, size) to verify that it initially does not have execute permissions.
chmod +x hola.sh #Modify the file permissions to add execute permission (+x), allowing the system to run it as a program.
ls -l hola.sh #This is repeated to visually confirm that the permissions have changed (you should now see an x ​​in the permission string, for example: -rwxr-xr-x).
./hola.sh #Run the script now that you have the necessary permissions.

ls/etc # Lists the contents of the /etc directory. This directory is usually readable by any user, so sudo is not typically required.
sudo  touch /etc/prueba.txt #this command need sudo beecause use touch
mkdir ~/mi_carpeta # Create a folder called my_folder in your home directory (~). You don't need sudo because you have full control over your own user folder.
sudo apt isntall cowsay #in this case also because use need for install something


umask #show the mask of opetaive system
touch archivo1 #crate a documents
mkdir archivvo1 # create a repository
ls -l #look the documents

ummask 027 #change the mask
touch archivo2 # create the file
mkdir archivo2 #create repository

umask 077 #change the mask
touch secreto.txt #create a file
mkdir privado #create a repository

 sudo apt-get update #Refreshes the local package index to reflect the latest versions of available software from the repositories.
 sudo apt-get install acl #: Installs the Access Control List utility, which allows for more granular file system permissions.
 sudo chown -R $(whoami) . # Recursively changes the owner of the current directory and all its contents to the currently logged-in user.
 sudo setfacl -bnR . #Recursively removes all extended Access Control List entries and restores standard permissions for the current directory.
 
whoami
echo "hola" > mi_archivo #mi_archivo: Creates a file named "mi_archivo" (or overwrites it) and writes the string "hola" into it.
 ls -l mi_archivo #Lists the details of "mi_archivo," including permissions, owner, size, and modification date in a long format.
useradd -m -s /usr/bin/zsh luna # Creates a new user named "luna" with a home directory and sets the default shell to Zsh.
chown luna mi_archivo # Changes the ownership of the file "mi_archivo" to the user "luna."
ls -l mi_archivo #


sudo newgrp grupo_test # Switches the current primary group of the shell session to "grupo_test" using root privileges
groups # Displays the list of groups the current user belongs to.
chgrp grupo_test luna # Changes the group ownership of the file or directory named "luna" to "grupo_test".
chgrp grupo_test comun # Changes the group ownership of the file or directory named "comun" to "grupo_test".
ls -l comun # Displays detailed information (permissions, owner, group, etc.) for the file or directory named "comun".

sudo chown luna:grupo_test mi_archivo # Changes both the owner to "luna" and the group to "grupo_test" for the file "mi_archivo" using root privileges.
ls -l mi_archivo 














