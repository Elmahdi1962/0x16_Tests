#!/bin/bash
echo "echo 'executing ls ; ls ..'" | ../rash
echo "ls ; ls .." | ../rash
echo "echo 'executing ls . ; ls /nonexist'" | ../rash
echo "ls . ; ls /nonexist" | ../rash



