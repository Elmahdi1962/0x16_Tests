#!/bin/bash
parent_dir="../"
echo -e "\n\nTesting [ /bin/ls ] in the shell =============================================="
file=$(find $parent_dir -type f ! -wholename "../*.sample" -executable -perm 755)
echo "/bin/ls" | $file
echo -e "\n\nTesting [ unknown ] in the shell (to check for error handling) ================"
echo "unknown" | $file
