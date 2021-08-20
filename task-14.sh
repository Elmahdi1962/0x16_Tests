#!/bin/bash
echo -e "\n\nTesting [ cd ../blog_post ]  in the shell ==============================================\n"
echo "cd ../blog_post ; echo 'pwd : ' ; pwd" | ../simple_shell
echo -e "\n\tif blog_post folder exist in the parent folder then pwd should print the path"

echo -e "\n\nTesting [ cd .. ]  in the shell ==============================================\n"
echo "cd .. ; echo 'pwd : ' ; pwd" | ../simple_shell
echo -e "\n\tif it worked pwd should print the path of the parent folder"

echo -e "\n\nTesting [ cd /tmp ]  in the shell ==============================================\n"
echo "cd /tmp ; echo 'pwd : ' ; pwd" | ../simple_shell
echo -e "\n\tif it worked pwd should print the path of /tmp"

echo -e "\n\nTesting [ cd - ]  in the shell ==============================================\n"
echo "cd - ; echo 'pwd : ' ; pwd" | ../simple_shell
echo -e "\n\tif it worked pwd should print the path of the last path you were on"

echo -e "\n\nTesting [ cd ~ ]  in the shell ==============================================\n"
echo "cd ~ ; echo 'pwd : ' ; pwd" | ../simple_shell
echo -e "\n\tif it worked pwd should print the path of your home directory"
