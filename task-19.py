#!/bin/python3
from test_runner import run_tests

test_cases = [
  ('ls # echo hi\n'),
  ('#ls echo hi\n'),
  ('alias put="echo $HOME #Prints Home folder"; echo foo;\n')
]

# Uncomment the line below to show all output
# run_tests(test_cases, True)
run_tests(test_cases)
