#!/bin/bash 
cluster=$1
if [ -z "$cluster" ]
then 
	echo "please insert a valid cluster name for example :- toothless , sandbox"
else
	echo "fetching the cluster ..."
fi
k=`kubectl config get-contexts | grep $cluster | awk '{print $1}'`
if [ "$k" == "*" ]
then
	echo "you are already on the mentioned cluster"
else
	kubectl config use-context $k
fi

