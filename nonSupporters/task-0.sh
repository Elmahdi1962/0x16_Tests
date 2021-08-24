#!/bin/bash
cd ../
readme_present=0
man_page_present=0
authors_present=0

if [ -f 'README.md' ]; then
  readme_present=1
fi

if [ -f 'man_1_simple_shell' ]; then
  man_page_present=1
fi

if [ -f 'AUTHORS' ]; then
  authors_present=1
fi

if [[ $readme_present == "1" && $man_page_present == "1" && $authors_present == "1" ]]; then
  echo -e "\033[97;42m Congratulations: \033[0m All checks passed"
else
  if [[ $readme_present == "1" ]]; then
    echo -e "\033[97;42m ✓ \033[0m README present"
  else
    echo -e "\033[97;41m ⨯ \033[0m README present"
  fi

  if [[ $man_page_present == "1" ]]; then
    echo -e "\033[97;42m ✓ \033[0m man page present"
  else
    echo -e "\033[97;41m ⨯ \033[0m man page present"
  fi

  if [[ $authors_present == "1" ]]; then
    echo -e "\033[97;42m ✓ \033[0m AUTHORS present"
  else
    echo -e "\033[97;41m ⨯ \033[0m AUTHORS present"
  fi

  echo -e "\033[97;41m Pbatenghyngvbaf: \033[0m Some checks are failing"
fi
