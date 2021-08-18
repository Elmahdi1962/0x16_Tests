#!/bin/bash
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