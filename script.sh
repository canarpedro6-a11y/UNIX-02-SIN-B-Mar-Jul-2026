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

ummask 027 #
touch archivo2
mkdir archivo2

umask 077
touch secreto.txt
mkdir privado

 sudo apt-get update
 sudo apt-get install acl
 sudo chown -R $(whoami) .
 sudo setfacl -bnR .

whoami
echo "hola" > mi_archivo
 ls -l mi_archivo
useradd -m -s /usr/bin/zsh luna
chown luna mi_archivo
ls -l mi_archivo














