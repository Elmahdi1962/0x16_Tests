#!/bin/bash
echo -e "\n\nTesting [ /bin/ls -l /tmp ] in the shell =============================================="
echo "/bin/ls -l /tmp" | ../simple_shell
echo -e "\n\nTesting [ ls -l /tmp  ] in the shell =============================================="
echo "ls -l /tmp" | ../simple_shell
