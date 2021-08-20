#!/bin/bash
echo -e "\n\nTesting [ ls ; ls .. ]  in the shell ==============================================\n"
echo "ls ; ls .." | ../simple_shell

echo -e "\n\nTesting [ ls . ; ls /nonexist ]  in the shell ==============================================\n"
echo "ls . ; ls /nonexist" | ../simple_shell

# Syntx errors
echo -e "\n\nTesting [ echo 65; ; ;echo 12 ]  in the shell ==============================================\n"
echo 'echo 65; ; ;echo 12' | ./simple_shell

echo -e "\n\nTesting [ ;echo 65; echo 12 ]  in the shell ==============================================\n"
echo ';echo 65; echo 12' | ./simple_shell
