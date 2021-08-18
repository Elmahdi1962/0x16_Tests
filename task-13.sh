#!/bin/bash
echo "echo i set env test = 1" | ../rash
echo "setenv test=1" | ../rash
echo "echo i set env test 2" | ../rash
echo "setenv test 2" | ../rash
echo "echo i unset env test" | ../rash
echo "unsetenv test" | ../rash

