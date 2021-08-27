#!/bin/bash
#set -x
VAR=$1
VAR=${VAR#/}
VAR=${VAR%/}
echo $VAR

