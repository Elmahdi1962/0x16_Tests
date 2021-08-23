#!/bin/bash
echo "echo 'executing cat commands.txt | ../simple_shell \ncommands file should be created in the tests folder'" | ../simple_shell
cat commands.txt | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell

