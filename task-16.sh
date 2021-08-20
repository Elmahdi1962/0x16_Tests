#!/bin/bash

# Syntax errors
echo -e "\n\nTesting [ echo 12 |& echo 78 ]  in the shell ==============================================\n"
echo 'echo 12 |& echo 78' | ./simple_shell

echo -e "\n\nTesting [ && echo 12 || echo 78 ]  in the shell ==============================================\n"
echo '&& echo 12 || echo 78' | ./simple_shell

echo -e "\n\nTesting [ echo 12 || echo 78 && ]  in the shell ==============================================\n"
echo 'echo 12 || echo 78 &&' | ./simple_shell

echo -e "\n\nTesting [ echo 12 |J echo 78 ]  in the shell ==============================================\n"
echo 'echo 12 |J echo 78' | ./simple_shell

#right syntax

echo -e "\n\nTesting [ ls /var && ls /var ]  in the shell ==============================================\n"
echo "ls /var && ls /var" | ../simple_shell

echo -e "\n\nTesting [ ls /hbtn && ls /var ]  in the shell ==============================================\n"
echo "ls /hbtn && ls /var" | ../simple_shell

echo -e "\n\nTesting [ ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn ]  in the shell ===============\n"
echo "ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn" | ../simple_shell

echo -e "\n\nTesting [ ls /var || ls /var ]  in the shell ==============================================\n"
echo "ls /var || ls /var" | ../simple_shell

echo -e "\n\nTesting [ ls /hbtn || ls /hbtn || ls /hbtn || ls /var ]  in the shell ==========================\n"
echo "ls /hbtn || ls /hbtn || ls /hbtn || ls /var" | ../simple_shell
