#!/bin/bash
# check for the usage of getline function

command="/bin/ls
/bin/ls
/bin/ls"

stop_shell
rm -f $tmp_file

echo "$command" | $LTRACE -bc -o $LTRACEOUTPUTFILE $SHELL > $OUTPUTFILE 2> /dev/null &

$SLEEP $SLEEPSECONDS

nmatch=`cat $LTRACEOUTPUTFILE | grep getline | wc -l`
if [ $nmatch -eq 1 ]; then
  print_unhappy
else
  print_happy
fi

stop_shell
rm -f $tmp_file
