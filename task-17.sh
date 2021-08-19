#!/bin/bash

# echo "alias put='alias pt=ls;'" | ./hsh
echo "echo 'executing alias'" | ../rash
echo "alias" | ../rash
echo "echo ------------------------------------" | ../rash
echo "echo 'executing alias test1='1', test2='2'" | ../rash
echo "alias test1='1', test2='2'" | ../rash
echo "echo ------------------------------------" | ../rash
echo "echo 'executing alias'" | ../rash
echo "alias" | ../rash
echo "echo ------------------------------------" | ../rash
echo "echo 'executing alias test1'" | ../rash
echo "alias test1" | ../rash
echo "echo ------------------------------------" | ../rash
