sudo apt update
sudo apt apt upgrade
sudo apt install parted
#sudo: Executes commands with superuser or system administrator privileges.
#apt: Package management tool that allows you to install, update, and remove software.
#update: Updates the local list of available packages and their versions from the repositories.
#update: Installs the latest versions of all packages already on the system.
#install: Downloads and installs a specific software package along with itsdependencies.
#parted: Command-line utility for creating, destroying, and manipulating disk partitions.
 sudo parted -l && echo -e "\n---\n" && lsblk -f && echo -e
#This command displays detailed information about the partitions and file system of all connected disks, using parted for the physical structure and lsblk for the format and mount points.
 [ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"
 #This command is used to check if the system is in BIOS or UEFI mode.
