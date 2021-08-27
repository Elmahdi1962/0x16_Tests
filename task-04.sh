#!/bin/bash

echo -e "\n################################ Task 4 ##############################\n"

# cases
grep -r " getline(" *.c *.h > ../logs/getlinelog
grep -r "	getline(" *.c *.h >> ../logs/getlinelog
grep -r "(getline("*.c *.h >> ../logs/getlinelog
if [ -s ../logs/getlinelog ]
then
    ../results/fail_check.sh "Getline_function_is_used_in_the_program"
else
    ../results/success_check.sh "Getline_function_is_dont_use_in_the_program"
    rm ../logs/getlinelog
fi

grep -r "static" *.c > ../logs/staticlog
if [ -s ../logs/staticlog ]
then
    ../results/success_check.sh "The_program_use_correctly_static_funcs"
    rm ../logs/staticlog
else
    echo "you dont use a static variables" > ../logs/staticlog
    ../results/fail_check.sh "The_program_dont_use_static_funcs"
fi
valgrind --error-exitcode=1 --leak-check=full 2> /dev/null echo "/bin/ls" /dev/null | ./hsh 2> /dev/null

LEAK=$?

if [ $LEAK == 0 ]
then
    ../results/success_check.sh "Valgrind_dont_show_any_errors_in_non_interactive_mode"
else
    ../results/fail_check.sh "Valgrind_show_memory_leaks"
fi
