#!/bin/bash

CHECK_NAME=${1}
FILL="###########################################"
SIZE=${#CHECK_NAME}
MAXSIZE=70
SIZEOFFILL="$(($MAXSIZE - $SIZE))"
SIDE="$(($SIZEOFFILL / 2))"
if [ $(($SIZEOFFILL % 2)) != 0 ]
then
	SIDE2=$(($SIDE - 1))
else
	SIDE2=$(($SIDE - 2))
fi
printf "\r\e[1;32m%.${SIDE}s %.${SIZE}s %.${SIDE2}s\e[0m\n" $FILL $CHECK_NAME $FILL
echo "check" >> ../gcounter
