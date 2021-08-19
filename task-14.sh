#!/bin/bash
echo "echo i cd to ../blog_post" | ../simple_shell
echo "cd ../blog_post" | ../simple_shell
echo "pwd" | ../simple_shell
echo "echo i cd to .." | ../simple_shell
echo "cd .." | ../simple_shell
echo "pwd" | ../simple_shell
echo "echo i cd /tmp" | ../simple_shell
echo "cd /tmp" | ../simple_shell
echo "pwd" | ../simple_shell
echo "echo i cd to -" | ../simple_shell
echo "cd -" | ../simple_shell
echo "pwd" | ../simple_shell
echo "echo i cd to ~" | ../simple_shell
echo "cd ~" | ../simple_shell
echo "pwd" | ../simple_shell


