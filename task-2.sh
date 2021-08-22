#!/bin/bash
echo -e "\n\nTesting [ /bin/ls ] in the shell =============================================="
echo "/bin/ls" | ../simple_shell
echo -e "\n\nTesting [ unknown ] in the shell (to check for error handling) ================"
echo "unknown" | ../simple_shell
