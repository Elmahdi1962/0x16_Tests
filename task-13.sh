#!/bin/bash
echo "echo i set env test = 1" | ../simple_shell
echo "setenv test=1" | ../simple_shell
echo "echo i set env test 2" | ../simple_shell
echo "setenv test 2" | ../simple_shell
echo "echo i unset env test" | ../simple_shell
echo "unsetenv test" | ../simple_shell

