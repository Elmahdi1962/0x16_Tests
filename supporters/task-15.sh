#!/bin/bash

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

#test1
echo -e "${green}\n\nTesting [ ls ; ls ..  ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "ls ; echo "Returned : \$?" ; ls .. ; echo "Returned : \$?"" | ../../simple_shell #the command to test in our shell

echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "ls ; echo "Returned : \$?" ; ls .. ; echo "Returned : \$?"" | /bin/sh #test same command in sh shell for comparing results


#test2
echo -e "${green}\n\nTesting [ ls ; ls ..  ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "ls . ; echo "Returned : \$?" ; ls /nonexist ; echo "Returned : \$?"" | ../../simple_shell #the command to test in our shell

echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "ls . ; echo "Returned : \$?" ; ls /nonexist ; echo "Returned : \$?""  | /bin/sh #test same command in sh shell for comparing results



# Syntx errors
#test3
echo -e "${green}\n\nTesting [ echo 65; ; ;echo 12  ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo "echo 65; ; ;echo 12" | ../../simple_shell #the command to test in our shell
echo -e "Returned : $?"

echo -e "\n${red}>>>>> Expected : \n${reset}"
echo "echo 65; ; ;echo 12"  | /bin/sh #test same command in sh shell for comparing results
echo -e "Returned : $?"

#test4
echo -e "${green}\n\nTesting [ ;echo 65; echo 12  ]  in the shell ==============================================\n"
echo -e "${red}>>>>> OUR Shell Result:\n${reset}"
echo ";echo 65; echo 12" | ../../simple_shell #the command to test in our shell
echo -e "Returned : $?"

echo -e "\n${red}>>>>> Expected : \n${reset}"
echo ";echo 65; echo 12"  | /bin/sh #test same command in sh shell for comparing results
echo -e "Returned : $?"