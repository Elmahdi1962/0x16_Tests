#!/bin/bash
echo "echo 'executing ls # echo hi'" | ../rash
echo "ls # echo hi" | ../rash
echo "echo ------------------------------------" | ../rash
echo "echo 'executing #ls echo hi'" | ../rash
echo "#ls echo hi" | ../rash
echo "echo ------------------------------------" | ../rash
