#!/bin/bash

echo -e "\n\nTesting [ ls # echo hi ]  in the shell ==============================================\n"
echo "ls # echo hi" | ../simple_shell

echo -e "\n\nTesting [ #ls echo hi ]  in the shell ==============================================\n"
echo "#ls echo hi" | ../simple_shell
