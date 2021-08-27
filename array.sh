#!/bin/bash
echo "Enter name: "
read -a names
echo "Names: ${names[0]} ${names[1]}"
echo "No of names : ${names[@]}"
