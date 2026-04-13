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
chmod u+x script.sh Grants execution permission exclusively to the file owner.
chmod o-r script.sh  He revoked read permission for users who do not belong to the owner's group ("others").
chmod u+rw,go-rwx script.sh  Assign read and write permissions to the owner, while removing any access (read, write and execute) to the group and third parties.