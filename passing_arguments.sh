#!/bin/bash

#echo $0 $1 $2 $3 #print all arguments which given at run time 
#args=("$@")	#create an arrat
#echo ${args[0]} ${arg[0]}
#echo $@ #print all arg
#echo $# #print no of ARGUMENTS
a=""
if [ -z "$a" ]
then
	a=12
	echo $a
else
	echo "not a null"
fi

