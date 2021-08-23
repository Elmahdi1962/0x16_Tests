#!/bin/bash

# Syntx errors
echo 'echo 65; ; ;echo 12' | ./simple_shell
echo ';echo 65; echo 12' | ./simple_shell
echo "echo 'executing ls ; ls ..'" | ../simple_shell
echo "ls ; ls .." | ../simple_shell
echo "echo 'executing ls . ; ls /nonexist'" | ../simple_shell
echo "ls . ; ls /nonexist" | ../simple_shell
