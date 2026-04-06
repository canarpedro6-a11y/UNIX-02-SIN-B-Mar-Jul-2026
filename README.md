#kernel de linux > operating system core
bussy box > basic utilities
syslinux > loads everything when booting

sudo apt install -y git nim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86^C
sudo: Executes the command with administrative or root privileges.

apt install -y: The package manager command to install software, with the -y flag to automatically confirm all prompts.

git: A version control system used to download, manage, and track changes in source code.
nim: A statically typed, compiled programming language that focuses on performance and readability.
make: A build automation tool that automatically compiles and builds executable programs from source code.
gcc: The GNU Compiler Collection, used for compiling C and other programming languages.
libncurses-dev: Development libraries for creating "GUI-like" text user interfaces in the terminal.
flex: A tool used to generate scanners (lexical analyzers) that recognize patterns in text.
bison: A general-purpose parser generator that converts a grammar description into a C program.
bc: An arbitrary-precision calculator language often used in build scripts for mathematical operations.
cpio: A tool used to create and extract archives, frequently used for managing Linux initial ramdisk (initramfs) files.
libelf-dev: Development files for handling ELF (Executable and Linkable Format) files, required for Linux kernel compilation.
libssl-dev: Development libraries for SSL and TLS protocols, providing cryptography functions for secure communication.
syslinux: A collection of lightweight bootloaders for starting Linux from various file systems and devices.
dosfstools: Utilities for creating and checking MS-DOS FAT file systems (commonly used for EFI boot partitions).
qemu-system-x86: A full system emulator that allows you to run virtual machines with x86 architecture.


git clone --depth 1 https://github.com/torvalds/linux.git 
