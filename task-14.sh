#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo -e "${green}\n\nTesting [ cd ../blog_post ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd ../blog_post ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd ../blog_post ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd .. ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd .. ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd .. ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd /tmp ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd /tmp ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd /tmp ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results


echo -e "${green}\n\nTesting [ cd - ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd - ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd - ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd ~ ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd ~ ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd ~ ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results
