#!/bin/bash
echo "echo 'executing ls ; ls ..'" | ../simple_shell
echo "ls ; ls .." | ../simple_shell
echo "echo 'executing ls . ; ls /nonexist'" | ../simple_shell
echo "ls . ; ls /nonexist" | ../simple_shell



