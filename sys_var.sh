#!/bin/bash
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
name=mark
echo the name is $name
echo "enter your name"
read name 
echo "entered name:" $name
echo "enter two no"
read num1 num2
echo $num1 $num2
read -p 'username: 'user_var
read -sp 'password: 'pass_var
echo "username: $user_var"
echo "username: $pass_var"

