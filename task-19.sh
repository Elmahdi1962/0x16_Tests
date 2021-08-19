#!/bin/bash
echo "echo 'executing ls # echo hi'" | ../simple_shell
echo "ls # echo hi" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell
echo "echo 'executing #ls echo hi'" | ../simple_shell
echo "#ls echo hi" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell
