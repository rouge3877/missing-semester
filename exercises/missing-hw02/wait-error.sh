#!/usr/bin/env bash

if [[ $# -lt 1 ]]; then
    echo "$0 needs a program's name!"
    echo "Now, it has $@"
    echo -e  "\t usage: ./$0 <pragram's path>"
    exit 1
fi

if [[ $# -gt 1 ]]; then
    echo "$0 needs only one parameter! Now, it has $@"
    echo -e  "\t usage: ./$0 <pragram's path>"
    exit 1
fi

path=$(find . -maxdepth 1 -name $1 )
if [[ -z $path ]]; then
    path=$(which $1)
fi
if [[ -z $path ]]; then 
    echo "Doesn't found program: $1"
    exit 1
fi
echo "Run program $path"

count=1
$path > $1.log 2>> $1.log

while [[ $? -eq 0 ]]; do
    count=$(($count+1))
    $path >> $1.log 2>> $1.log;
done

echo "Before the script $path return $?, it runs for $count times."
