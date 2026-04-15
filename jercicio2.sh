touch prueba.txt #Create an empty file called test.txt.
chmod 600 prueba.xt #Try assigning very restrictive permissions. The 6 (read and write) is for the owner, and the 00 means no one else can do anything. Note: You have a typo; you typed .xt instead of .txt.
ls -l prueba.txt #It displays the file details to verify that only the owner now has access.
chmod 755 prueba.txt #Change the permissions to rwxr-xr-x. The owner has full control, while the group and others can only read and execute.
ls -l prueba .txt #List the details again to confirm the change. Note: There is an extra space between test and .txt that will cause a "file not found" error.