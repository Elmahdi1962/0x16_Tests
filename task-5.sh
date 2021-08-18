#!/bin/bash
echo "exit 25" | ../rash
echo $?
echo "exit should return 25"
echo "exit 5" | ../rash
echo $?
echo "exit should return 5"
echo "exit 256" | ../rash
echo $?
echo "exit should return 0"
