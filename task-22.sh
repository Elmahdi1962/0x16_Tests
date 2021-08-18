#!/bin/bash
echo "echo 'executing cat commands.txt | ../rash \ncommands file should be created in the tests folder'" | ../rash
cat commands.txt | ../rash
echo "echo ------------------------------------" | ../rash

