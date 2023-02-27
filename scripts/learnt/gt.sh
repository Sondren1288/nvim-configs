#!/bin/bash

read v1 v2

if [[ $v1 -gt $v2 ]];
then
	echo "Greater"
fi
if [ $v1 -gt $v2 ];
then
	echo "Greater as well"
fi

