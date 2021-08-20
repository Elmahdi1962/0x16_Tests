#!/bin/bash


echo -e "\n\nTesting [ alias put='alias pt=ls;' ]  in the shell ==============================================\n"
echo "alias put='alias pt=ls;'" | ../simple_shell


echo -e "\n\nTesting [ alias test1='1', test2='2' ]  in the shell ==============================================\n"
echo "alias test1='1', test2='2'" | ../simple_shell

echo -e "\n\nTesting [ alias test1 ]  in the shell ==============================================\n"
echo "alias test1" | ../simple_shell

echo -e "\n\nTesting [ alias ]  in the shell ==============================================\n"
echo "alias" | ../simple_shell

