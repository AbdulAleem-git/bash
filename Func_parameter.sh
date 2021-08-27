#!/bin/bash
function mysum(){
	
	value1="$1"
	value2="$2"
	value3="$value1: $value2"
	echo $value3
	JSON=\''{"hostname": "localhost", "outdir": "'"$value3"'", "port": 20400, "size": 100000}'\'
	printf '%s\n' "$JSON"
}
mysum "hi this is abdul" " hello"
