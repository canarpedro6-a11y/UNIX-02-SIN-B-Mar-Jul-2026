#PART 2
ls #This command is used to monitor directories.
#PART2.1
ls documents #The result is a list of the files included in the Documents directory.
aptitude #A high-level interface to the package manager used to install, remove, and manage software packages.
#PART 2.2
ls -l #provide more information about each of the listed files
ls -r #The results will be printed in reverse alphabetical order.
ls -l -r #It displays the files in a detailed list format (permissions, owner, size) and sorts them in reverse alphabetical order.
ls -rl #It performs exactly the same function as the previous one, combining the flags to display the long list in reverse order.
ls -lr #It is an alternative way of writing the same parameters, also resulting in a detailed list ordered from Z to A.
aptitude -v #Runs the package manager tool with a verbosity flag to output more detailed operational message logs.
aptitude -v -v #Increases the package manager tool's operational log verbosity level even further.
aptitude -vv #Combines the verbosity flags into a single parameter to achieve the exact same increased level of operational log detail.
#PART 3
pwd #Indicates that the user is currently in their home folder
#PART 4
cd Documents #change to documents directory
cd / #To navigate to the root directory
cd workspace #change directory
cd UNIX-02-SIN-B-Mar-Jul-2026 #change directory
cd .. #It moves you up one level in the folder hierarchy, returning to the parent directory.
cd ~ #It takes you directly to the current user's home folder, no matter where you are in the system.
#PART 5
ls -l /var/log/ #For detailed information about the files, such as file type, permissions, and properties
ls -r /var/log/ #the list of files in reverse alphabetical order
ls -lSr /var/log #Lists the contents of the log directory in a detailed format, sorted by file size in ascending order.
ls -l -S /var/log #Lists the contents of the log directory in a detailed format, sorted by file size in descending order.
ls -lt /var/log #Lists the contents of the log directory in a detailed format, sorted by modification time with the newest files first.
#PART 6
su --login #Switches the terminal session to the root superuser while fully simulating a fresh login environment.
su -l #Acts as a shortcut for the login command, switching to the root user with their specific environment variables.
su - #temporarily act as a different user
sudo sl #Executes the steam locomotive command with administrative privileges.
#PART 7
ls -l script_linux_cisco_1.sh #It includes information about your permits.
#PART 8
ls -l script_linux_cisco_1.sh #Repeats the detailed command to check the current file permissions of the script.
./script_linux_cisco_1.sh #: Attempts to execute the script in the current directory, which may fail if execution permissions are missing.
chmod u+x script_linux_cisco_1.sh #Modifies the file permissions to grant execute rights specifically to the owner of the script.
#PART 9
sudo chown root script_linux_cisco_1.sh #Uses administrative privileges to change the ownership of the script file to the root user.
ls -l script_linux_cisco_1.sh #Displays the detailed information of the script to verify that the owner has changed to root.
./script_linux_cisco_1.sh #ttempts to execute the script again, which will fail if the current regular user no longer owns it.
sudo .script_linux_cisco_1.sh #Executes the script successfully by using administrative
#PART 10
cat hola.txt #view the contents of my file
head hola.txt #To view only the first few lines of the previous result for the file
head -n 5 hola.txt #: Displays exactly the first 5 lines of text from the file "hola.txt".
tail hola.txt #view the last lines of the file
tail -n 5 hola.txt #Displays exactly the last 5 lines of text from the file "hola.txt".
#PART 11
cp #The cp command is used to copy files.
cd -/documents #Navigates the terminal directly to the "documents" folder located inside the user's home directory.
mv #Moves or renames files and directories from one location in the file system to another.
rm #Removes or permanently deletes specified files or directories from the file system.
#PART 11.1
dd #A command utility used for copying and converting files, low-level data cloning, or creating disk images, followed by an incomplete comment symbol.






