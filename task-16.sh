#!/bin/bash

# Syntax errors
echo 'echo 12 |& echo 78' | ./simple_shell
echo 'echo 12 ||| echo 78' | ./simple_shell
echo '&& echo 12 || echo 78' | ./simple_shell
echo 'echo 12 || echo 78 |' | ./simple_shell
echo 'echo 12 || echo 78 &&' | ./simple_shell
echo 'echo 12 |( echo 78' | ./simple_shell
echo 'echo 12 |J echo 78' | ./simple_shell

echo "echo 'ls /var && ls /var'" | ../simple_shell
echo "ls /var && ls /var" | ../simple_shell
echo "echo ---------------------------" | ../simple_shell
echo "echo 'ls /hbtn && ls /var'" | ../simple_shell
echo "ls /hbtn && ls /var" | ../simple_shell
echo "echo ---------------------------" | ../simple_shell
echo "echo 'ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn'" | ../simple_shell
echo "ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn" | ../simple_shell
echo "echo ---------------------------" | ../simple_shell
echo "echo 'ls /var || ls /var'" | ../simple_shell
echo "ls /var || ls /var" | ../simple_shell
echo "echo ---------------------------" | ../simple_shell
echo "echo 'ls /hbtn || ls /hbtn || ls /hbtn || ls /var'" | ../simple_shell
echo "ls /hbtn || ls /hbtn || ls /hbtn || ls /var" | ../simple_shell
