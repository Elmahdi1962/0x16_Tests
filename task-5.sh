#!/bin/bash
echo -e "\n\nTesting [ exit 25 ]  in the shell ==============================================\n"
echo "exit 25" | ../simple_shell
echo -e "\t\$? printed : $?"
echo -e "\n\texit should return 25"

echo -e "\n\nTesting [ exit 5 ]  in the shell ==============================================\n"
echo "exit 5" | ../simple_shell
echo -e "\t\$? printed : $?"
echo -e "\n\texit should return 5"

echo -e "\n\nTesting [ exit 256 ]  in the shell ==============================================\n"
echo "exit 256" | ../simple_shell
echo -e "\t\$? printed : $?"
echo -e "\n\texit should return 0"

echo -e "\n\nTesting [ exit 48565+484 ]  in the shell ==============================================\n"
echo "exit 48565+484" | ../simple_shell
echo -e "\nthe shell should print(../simple_shell: number: exit: Illegal number: 454+645)"