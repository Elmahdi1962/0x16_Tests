#!/bin/bash
echo "exit 25" | ../simple_shell
echo $?
echo "exit should return 25"
echo "exit 5" | ../simple_shell
echo $?
echo "exit should return 5"
echo "exit 256" | ../simple_shell
echo $?
echo "exit should return 0"
