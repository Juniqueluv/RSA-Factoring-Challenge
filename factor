#!/usr/bin/env bash

FILE=$1

while read NUM
do
	factors=($(factor $NUM))
	echo "$NUM=$(($NUM/${factors[1]}))*${factors[1]}"
done < $FILE
