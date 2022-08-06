#!/bin/bash

input1=$1
input2=$2

if [ $# -ne 2 ]; then
 echo "引数がありません"
 exit 1
fi

expr $1 + $2 > /dev/null 2>&1
if [ $? -ge 2 ]; then
 echo "Error"
 exit 1
fi

if [ "$input1" -lt "$input2" ]; then
 tmp=$input1
 input1=$input2
 input2=$tmp
fi

r=$(($input1%$input2))
while [ "$r" != 0 ];
do
 input1=input2
 input2=r
 r="$input1"%"$input2"
done

echo $input2
