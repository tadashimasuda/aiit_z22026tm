#!/bin/bash

#!/bin/bash

input1=$1
input2=$2

check_input(){
    #引数の数が正しいか
    if [ $# -ne 2 ]; then
     echo "Error"
     exit 1
    fi

    expr $1 + $2 > /dev/null 2>&1
    if [ $? -ge 2 ]; then
     echo "Error"
     exit 1
    fi

    #引数が1以上であるか
    if [ $1 -le 0 -o $2 -le 0 ]; then
     echo "Error"
     exit 1
    fi
}

start_GCD(){
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
}

check_input $1 $2
start_GCD $1 $2

