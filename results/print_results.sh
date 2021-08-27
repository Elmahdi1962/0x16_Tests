#!/bin/bash


CHECK=`wc -l gcounter | grep -o "[0-9]\+"`
FAIL=`wc -l rcounter | grep -o "[0-9]\+"`
TOTAL="$(($CHECK + $FAIL))"

echo -e "\n################################ Results #############################"
echo -e "######################### Number of tests: $TOTAL ########################"

if [ -f gcounter ]
then
    if [ -f rcounter ]
    then
	printf "\r\e[1;32m########################### Passed: %s tests. ########################\e[0m\n" $CHECK
	printf "\r\e[1;31m########################### Fail: %s tests. ###########################\e[0m\n" $FAIL
    fi
fi

echo -e "########################### End of the test ##########################"

[ -f gcounter ] && rm gcounter
[ -f rcounter ] && rm rcounter
