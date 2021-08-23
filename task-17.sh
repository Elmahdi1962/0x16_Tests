#!/bin/bash

# alias substitution only works in the interactive mode
# echo "alias put='alias pt=ls;'" | ./simple_shell
echo "echo 'executing alias'" | ../simple_shell
echo "alias" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell
echo "echo 'executing alias test1='1', test2='2'" | ../simple_shell
echo "alias test1='1', test2='2'" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell
echo "echo 'executing alias'" | ../simple_shell
echo "alias" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell
echo "echo 'executing alias test1'" | ../simple_shell
echo "alias test1" | ../simple_shell
echo "echo ------------------------------------" | ../simple_shell

#
alias pg='echo '
alias 98 pg ty
