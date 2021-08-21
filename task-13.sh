#!/bin/bash
echo -e "\n\nTesting [ setenv test=1 ]  in the shell ==============================================\n"
echo "setenv test=1" | ../simple_shell
echo -e "\n\t it should print error of usage"

echo -e "\n\nTesting [ setenv test 2 ]  in the shell ==============================================\n"
echo "setenv test 2; $test" | ../simple_shell
echo -e "\n\tthis should print 2 "

echo -e "\n\nTesting [ unsetenv test ]  in the shell ==============================================\n"
echo "unsetenv test; $test" | ../simple_shell
echo -e "\n\tthis should print nothing "
