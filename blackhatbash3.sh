#!/bin/bash
book="black hat bash"
echo "this book´s name is ${book}"

root_directory=$(ls -ld /)
echo "${root_directory}"

book="black hat bash"
unset book
echo "${book}"
