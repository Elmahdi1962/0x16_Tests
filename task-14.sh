#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

echo -e "${green}\n\nTesting [ cd ../blog_post ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd ../blog_postt ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "Returned : ${cd_status} \n"
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd ../blog_postt ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd .. ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd .. ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd .. ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd /tmp ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd /tmp ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd /tmp ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results


echo -e "${green}\n\nTesting [ cd - ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd - ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd - ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results

echo -e "${green}\n\nTesting [ cd ~ ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "cd ~ ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | ../simple_shell #the command to test in our shell
echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "cd ~ ; echo "Returned : \$?" ; echo 'pwd : ' ; pwd" | /bin/sh #test same command in sh shell for comparing results
