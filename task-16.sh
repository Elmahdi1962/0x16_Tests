#!/bin/bash

# Syntax errors
echo "echo '12 |& echo 78'" | ./simple_shell
echo 'echo 12 |& echo 78' | ./simple_shell
echo "echo '&& echo 12 || echo 78'" | ./simple_shell
echo '&& echo 12 || echo 78' | ./simple_shell
echo "echo 'echo 12 || echo 78 &&'" | ./simple_shell
echo 'echo 12 || echo 78 &&' | ./simple_shell
echo "echo 'echo 12 |J echo 78'" | ./simple_shell
echo 'echo 12 |J echo 78' | ./simple_shell

echo "echo 'ls /var && ls /var'" | ../rash
echo "ls /var && ls /var" | ../rash
echo "echo ---------------------------" | ../rash
echo "echo 'ls /hbtn && ls /var'" | ../rash
echo "ls /hbtn && ls /var" | ../rash
echo "echo ---------------------------" | ../rash
echo "echo 'ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn'" | ../rash
echo "ls /var && ls /var && ls /var && ls /hbtn && ls /hbtn" | ../rash
echo "echo ---------------------------" | ../rash
echo "echo 'ls /var || ls /var'" | ../rash
echo "ls /var || ls /var" | ../rash
echo "echo ---------------------------" | ../rash
echo "echo 'ls /hbtn || ls /hbtn || ls /hbtn || ls /var'" | ../rash
echo "ls /hbtn || ls /hbtn || ls /hbtn || ls /var" | ../rash
